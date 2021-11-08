# Obfuscation Example

## Scenario

## Environment

- IDA Pro Version 7.6.210427
- Python 3.9.5

## Preconditions

## Obfuscation

## Results

### Pure Application
```bash
$ ./app-pure.exe
Fetching => https://example.localhost/verify?key=d5a2858c-d045-4712-afa6-db961f0d60a6d5a2858c-d045-4712-afa6-db961f0d60a6
Application has been started, your key is d5a2858c-d045-4712-afa6-db961f0d60a6
```

```bash
$ cat app-pure.exe.sha256
daa78d91284c984a3d5491c2f1a98a0107904b43f6a524f4d46aee8bbbb1156c *build/pure/app-pure.exe

```

### Untrustworthy Application
```bash
$ ./app-untrust.exe
Fetching => https://untrust.localhost/verify?key=d5a2858c-d045-4712-afa6-db961f0d60a6d5a2858c-d045-4712-afa6-db961f0d60a6
Application has been started, your key is d5a2858c-d045-4712-afa6-db961f0d60a6

```

```bash
$ ./app-untrust.exe
Fetching => https://untrust.localhost/verify?key=d5a2858c-d045-4712-afa6-db961f0d60a6d5a2858c-d045-4712-afa6-db961f0d60a6
Application has been started, your key is d5a2858c-d045-4712-afa6-db961f0d60a6
```

## Obfuscated Application
```bash
$ ./app-obfuscated.exe
Fetching => https://example.localhost/verify?key=d5a2858c-d045-4712-afa6-db961f0d60a6d5a2858c-d045-4712-afa6-db961f0d60a6
Application has been started, your key is d5a2858c-d045-4712-afa6-db961f0d60a6

```

```bash
$ ./app-obfuscated.exe
Fetching => https://example.localhost/verify?key=d5a2858c-d045-4712-afa6-db961f0d60a6d5a2858c-d045-4712-afa6-db961f0d60a6
Application has been started, your key is d5a2858c-d045-4712-afa6-db961f0d60a6

```