# riverpod_boilerplate_code

Flutter starter following **Riverpod MVVM + Clean Architecture**, with a
centralized theme system, light/dark support, and responsive helpers. The
patterns mirror the `collectors-card` production app.

## Stack

- **State management:** `flutter_riverpod` + `riverpod_generator` (codegen `@riverpod` notifiers)
- **Immutability/models:** `freezed` + `json_serializable`
- **Networking:** `dio` + `retrofit` (+ auth & connectivity interceptors)
- **Navigation:** `go_router` (auth-gated redirects)
- **Result type:** `multiple_result` (`Result<T, Failure>`)
- **Storage:** `flutter_secure_storage` (tokens), `shared_preferences` (theme)

## Architecture

Each feature is a self-contained vertical slice split into three layers:

```
features/<feature>/
├── data/                      # Outer layer — talks to the world
│   ├── api/                   #   Retrofit service definitions
│   ├── dto/                   #   Wire models (freezed + json)
│   └── repository/            #   Repository interface + impl (maps errors → Failure)
├── domain/                    # Pure business logic, no Flutter/IO
│   ├── model/                 #   Entities
│   └── use_case/              #   One class per business action
└── presentation/             # UI layer
    ├── state/                 #   Immutable UI state (freezed)
    ├── view_model/            #   @riverpod Notifier — the "VM" in MVVM
    ├── ui/                    #   Screens
    └── widgets/               #   Feature-scoped widgets
```

Dependency direction: **presentation → domain → data**. The domain depends on
repository *interfaces*, never concrete implementations, so data sources are
swappable (real API ↔ mock ↔ test fake).

```
core/
├── base/        # BaseConsumerState, responsive utils + breakpoints, base notifier
├── common/      # Shared extensions (validators) and widgets
├── config/      # AppConfig (base URL, mock toggle)
├── exception/   # Failure (normalized, presentable error)
├── local/       # Secure token storage
├── network/     # Dio provider + auth/connectivity interceptors
├── router/      # GoRouter provider, route names, auth redirect
└── theme/       # AppColors, AppTextStyles, AppSpacing, AppRadius, AppTheme, theme controller
```

## Theming

`AppTheme.light` / `AppTheme.dark` build `ThemeData` from the tokens in
`core/theme`. Widgets read `Theme.of(context)` (e.g. `colorScheme.primary`,
`textTheme.bodyMedium`) so flipping brightness flows everywhere. The mode is
persisted by `ThemeController` and toggleable from the Home screen.

## Responsiveness

- `BreakPoint` — width thresholds (mobile/tablet/desktop).
- `ResponsiveBuilder` mixin — `responsiveBuilder(...)`, `isMobile/isTablet/isDesktop`.
- `context.rw/rh/rf/rr/rp` — scale design values relative to a reference device.

## Sample flow (Auth → Home)

A complete vertical slice: **Login** (`LoginScreen` → `LoginViewModel` →
`LoginUseCase` → `AuthRepository`) and a **Home** screen behind an auth gate.
`AuthController` is the session source of truth; the router redirects based on
it. Auth responses are **mocked** (`AppConfig.useMockData = true`) so the app
runs with no backend:

- Any valid email + 6+ char password signs in.
- `fail@example.com` triggers the error state.

## Getting started

```bash
flutter pub get

# Generate freezed / json / riverpod / retrofit code
dart run build_runner build --delete-conflicting-outputs
# or, while developing:
dart run build_runner watch --delete-conflicting-outputs

flutter run
```

## Adding a feature

1. Create `features/<name>/{data,domain,presentation}` mirroring `auth`.
2. Define the repository interface in `data/repository`, implement it, expose a
   `@Riverpod(keepAlive: true)` provider.
3. Write use case(s) in `domain/use_case` returning `Result<T, Failure>`.
4. Build the freezed `…State`, the `@riverpod` view model, and the screen.
5. Register the route in `core/router/app_router.dart` + `named_route.dart`.
6. Run build_runner.

## Multi-app setup

This repository hosts 7 separate client apps from one shared codebase.

- Shared infrastructure stays in `lib/core`
- App-specific code lives under `lib/apps/<slug>`, each owning its own screens, view models, and router
- Each app has its own Android product flavor (distinct `applicationId` + app name), so they install as separate apps on the same device

| App | Entry point | Android flavor |
| --- | --- | --- |
| Location Availability Inquiry | `lib/location_availability_inquiry.dart` | `locationAvailabilityInquiry` |
| Order to be Picked | `lib/order_to_be_picked.dart` | `orderToBePicked` |
| Order to be Shipped | `lib/order_to_be_shipped.dart` | `orderToBeShipped` |
| Delivery Note Print | `lib/delivery_note_print.dart` | `deliveryNotePrint` |
| Invoice | `lib/invoice.dart` | `invoice` |
| PO to Receive | `lib/po_to_receive.dart` | `poToReceive` |
| GRN to Print | `lib/grn_to_print.dart` | `grnToPrint` |

Run one on Android (flavor required so it installs under its own package name/icon):

```bash
flutter run -t lib/location_availability_inquiry.dart --flavor locationAvailabilityInquiry
```

Or use the matching launch config in `.vscode/launch.json` (one per app).

iOS flavors (distinct bundle IDs/schemes per app) aren't configured yet — only Android
product flavors are set up so far. Until that's added, `-t lib/<app>.dart` on iOS runs
under the single default bundle ID for local testing.

To add another product: create `lib/apps/<slug>/` (app widget + router + `features/home`),
an entry file `lib/<slug>.dart`, a case in the `AppFlavor` enum
(`core/config/app_flavor.dart`), a branch in `App`'s switch (`app.dart`), and a matching
Android `productFlavor` in `android/app/build.gradle.kts`.

## Notes

- `retrofit` is pinned to `4.6.0` — see the comment in `pubspec.yaml` for why.
- `*.g.dart` / `*.freezed.dart` are generated; they're excluded from analysis.
