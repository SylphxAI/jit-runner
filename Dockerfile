# Pinned base: the GitHub Actions runner binary lives in this image, and GitHub
# retires old runner versions on a schedule — a floating tag silently drifts
# onto one and then every job in the estate stops at once. Observed: runners
# reported "Runner Version 2.335.1 will no longer be able to run jobs on
# September 24, 2026, please update your runner version" while this line still
# read :ubuntu-noble. Bump this deliberately, following
# https://github.com/actions/runner/releases.
FROM myoung34/github-runner:2.337.0-ubuntu-noble

# Install Sylphx-specific tools
RUN apt-get update && apt-get install -y \
    curl \
    git \
    jq \
    kmod \
    && rm -rf /var/lib/apt/lists/*

# Bun
RUN curl -fsSL https://bun.sh/install | bash
ENV PATH="/root/.bun/bin:$PATH"
