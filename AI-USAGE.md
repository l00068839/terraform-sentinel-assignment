# AI-use declaration

## Tool and model identification

Tool: OpenAI ChatGPT / Codex assistant.
Dates used: 6-7 November 2026.
Exact model version: not independently verified or recorded during the work.
No specific model version or percentage of AI contribution is claimed.

## How AI was used

AI provided step-by-step guidance for installing tools, configuring HCP
Terraform, creating Terraform resources and writing Sentinel policies.

It generated substantial portions of the Terraform and Sentinel code,
PowerShell commands, mock data, test configurations and documentation.
It also helped interpret test results and troubleshoot errors.

This support included corrections to generated code and instructions.
For example, a missing comma in a Sentinel list was corrected, and a test
assertion was adjusted because short-circuit evaluation omitted a rule
from the execution trace.

## My contribution

I configured the tools and accounts, ran the commands and updated the
policies in HCP Terraform. I executed the acceptance and rejection tests,
provided the actual output for review and gathered screenshots.

I restored compliant settings after the deliberate failure tests and
committed and pushed the project to GitHub.

The supplied evidence records actual execution. It was not generated as
a substitute for running the code.

## Recorded prompts

The following are representative prompts copied from the conversation:

- "Provide comprehensive steps to support me to completion here"
- "Do it bit by bit"
- "If I do not need to use amazon that is fine"
- "provide full"
- "copy and pasted how to check"
- "provide here what I need to paste in"
- "where am i up to"
- "what code am i adding here"

Further prompts supplied terminal output, errors and screenshots and asked
for the next step. This list is a summary, not a complete prompt transcript.
The conversation should be retained as the full record of prompts and replies.

## Responsibility and limitations

AI assistance does not establish that the implementation is complete or
secure. Claims in this submission should be read alongside the documented
scope, actual test evidence and limitations.

The final submission remains my responsibility. No real AWS deployment
or legal assessment of digital sovereignty is claimed.
