# Neuromorphic SoC Simulation (Learning Project)

A simulation-only, software-based exploration of research proposal — building hands-on intuition for
digital logic, RTL design, hardware verification, and SoC/bus integration before
starting the PhD itself.

Architecture: an open-source RISC-V core (PicoRV32) as the baseline processor, a
simplified memory-mapped expansion bus (modelled on Arm's AHB-lite), and a custom
LIF-based neuromorphic accelerator block attached to it — mirroring nanoSoC's real
"baseline CPU + expansion bus + custom accelerator" pattern, using only free,
open-source tools.

No physical hardware is used. Everything here runs in simulation (Icarus Verilog /
Verilator), via either a native toolchain or the included Docker setup.

## Setup

- **Native:** see `Dockerfile` for the exact package list; install the same tools
  directly via `apt`/`pip`.
- **Docker:** `docker compose build`, then `docker compose run --rm neuromorphic-sim`
  to get a shell with the full toolchain, project directory mounted at `/workspace`.
  The RISC-V cross-compiler (`riscv64-unknown-elf-gcc`) is bind-mounted in from the
  host's native install (see `docker-compose.yml`), not baked into the image.

See `PROGRESS.md` for the phase-by-phase build plan and current status.
