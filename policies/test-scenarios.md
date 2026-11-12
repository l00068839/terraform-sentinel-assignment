# Test scenarios and evidence

## HCP Terraform evaluations

These tests were executed through HCP Terraform. Each deliberate failure
was followed by restoration of the compliant configuration.

| Scenario | Expected result | Recorded result | Evidence |
|---|---|---|---|
| Compliant storage and compute | Allow | Passed | ../evidence/pass-storage-and-compute-policy.txt |
| Unencrypted standalone EBS | Block | Failed as expected | ../evidence/fail-unencrypted-storage.txt |
| EBS availability zone outside Ireland | Block | Failed as expected | ../evidence/fail-storage-outside-ireland.txt |
| Unapproved t3.large instance | Block | Failed as expected | ../evidence/fail-unapproved-instance-type.txt |
| IMDSv2 optional | Block | Failed as expected | ../evidence/fail-imdsv2-optional.txt |
| EC2 public IP enabled | Block | Failed as expected | ../evidence/fail-public-ip.txt |
| SSH source 0.0.0.0/0 | Block | Failed as expected | ../evidence/fail-unrestricted-ssh.txt |
| Loose AWS provider version constraint | Block | Failed as expected | ../evidence/fail-provider-version-constraint.txt |
| Compliant six-resource configuration with final HCP policy | Allow | Passed | ../evidence/saved-plan-output.txt |

## Local Sentinel mock tests

A rejection test passes when the policy returns the expected false value.
All four cases below passed. Full results are in
[the local test log](../evidence/sentinel-tests.txt).

| Test configuration | Expected policy result |
|---|---|
| pass-approved-module.hcl | Approved provider and module accepted |
| fail-module-source.hcl | Unapproved module source rejected |
| fail-module-version.hcl | Unapproved module version rejected |
| fail-provider-source.hcl | Unapproved provider source rejected |

Test configurations are under test/atu-security-guardrails.
Mock imports are under mocks.

These mocks use an empty infrastructure plan. They exercise supply chain
rules, not EC2, storage or network enforcement. Infrastructure evidence
comes from the separate HCP evaluations above.

## Coverage gaps

The following cases have not been individually demonstrated as negative
tests: EC2 outside Ireland, unencrypted EC2 root storage, public IPv6
ingress, missing security attributes and alternative security group rule
representations.

No backup, replication, administrative-access or runtime-drift enforcement
is claimed. See the README and technical report for the scope and limitations.

## Screenshots

- [HCP policy passed](../evidence/hcp-policy-pass.png)
- [HCP policy hard failed](../evidence/hcp-policy-fail.png)
