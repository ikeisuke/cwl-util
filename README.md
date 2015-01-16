cwl-util
====================

This is cloudwatch logs util.

# Require

- gem install aws-sdk-core
- gem install thor

# Feature

## grep

grep message in cloudwatch log streams of a cloudwatch group

### Usage

`cwl-util grep STRING LOG_GROUP_NAME [-s start_time] [-e end_time] [-o output] [--debug]`

### Options

-o, [--output=OUTPUT]            # path to output file
  
[--debug], [--no-debug]
  
-s, [--start-time=N]             # unixtimestamp as the number milliseconds, default : yesterday 00:00:00
  
-e, [--end-time=N]               # unixtimestamp as the number milliseconds, default : today 00:00:00
  

### Example

set start_tmime and end_time

`AWS_PROFILE=your_profile AWS_REGION=us-east-1 cwl-util 'string' 'your_log_stream' -s 1421161200000 -e 1421323200000`

grep 'string' from 'yout_log_stream' all yesterday, and put result to output file

`AWS_PROFILE=your_profile AWS_REGION=us-east-1 cwl-util 'string' 'your_log_stream' -o /path/to/output`

debug ( prints stream_name and message to stdout )

`AWS_PROFILE=your_profile AWS_REGION=us-east-1 cwl-util 'string' 'your_log_stream' -o /path/to/output --debug`

# Todo

- spec (immediately!)
- all refacatoring

