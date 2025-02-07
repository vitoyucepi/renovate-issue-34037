# Minimal reproduction for [renovate discussion 34037](https://github.com/renovatebot/renovate/discussions/34037)

## Current behavior

Renovate cannot update the `tzdata` version if `:pinAllExceptPeerDependencies` preset is enabled.  
It will print a debug message
```json
{
    "depName": "ubuntu_24_04/tzdata",
    "currentValue": "2024a-3ubuntu1.1",
    "datasource": "repology",
    "versioning": "loose",
    "replaceString": "# renovate: datasource=repology depName=ubuntu_24_04/tzdata versioning=loose\nARG TZDATA_VERSION=2024a-3ubuntu1.1\n",
    "updates": [],
    "packageName": "ubuntu_24_04/tzdata",
    "warnings": [],
    "registryUrl": "https://repology.org/",
    "skipReason": "invalid-value"
}
```

## Expected behavior

```dockerfile
# renovate: datasource=repology depName=ubuntu_24_04/tzdata versioning=loose
ARG TZDATA_VERSION=2024a-3ubuntu1.1
# new line
```

should be updated to

```dockerfile
# renovate: datasource=repology depName=ubuntu_24_04/tzdata versioning=loose
ARG TZDATA_VERSION=2024b-0ubuntu0.24.04.1
# new line
```

as of 2025-02-07.

## Additional notes

This behavior was introduced by https://github.com/renovatebot/renovate/pull/33800.  
Every version of renovate less than `39.144.2` will create an update.
`renovate:39.144.2` will close any previously opened pull requests.
