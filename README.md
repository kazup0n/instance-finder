# instance-finder

just print ec2 instances

## example

```
 $ AWS_REGION=us-west-1 findinstance
# of instances: 5
  +-------------+-----------------+---------------------------------------------------+---------+
  | instance_id | name            | start                                             | status  |
  +-------------+-----------------+---------------------------------------------------+---------+
  | i-XXXXXXXXX | XXXXXXXXX       | aws ec2 start-instances --instance-ids=i-XXXXXXXXX | stopped |
  +-------------+-----------------+---------------------------------------------------+---------+
  | i-XXXXXXXXX  | XXXXXXXXX      | aws ec2 start-instances --instance-ids=i-XXXXXXXXX | stopped |
  +-------------+-----------------+---------------------------------------------------+---------+
  | i-XXXXXXXXX  | XXXXXXXXX      | aws ec2 start-instances --instance-ids=i-XXXXXXXXX | running |
  +-------------+-----------------+---------------------------------------------------+---------+
  | i-XXXXXXXXX  | XXXXXXXXX      | aws ec2 start-instances --instance-ids=i-XXXXXXXXX | stopped |
  +-------------+-----------------+---------------------------------------------------+---------+
  | i-XXXXXXXXX  | XXXXXXXXX       | aws ec2 start-instances --instance-ids=i-XXXXXXXXX | stopped |
  +-------------+-----------------+---------------------------------------------------+---------+

```

## usage

1. clone this repository.
2. bundle install --path vendor/bundle
3. put some wrapper script in `~/bin` or somewhere you like.

## example 

```
#!/bin/sh

bundle exec ruby ~/src/github.com/kazup0n/instance-finder/instance-finder.rb
```
