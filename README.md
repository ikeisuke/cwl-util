cwl-util
====================

This is cloudwatch logs util.

# Require

package

- gcc
- ruby-devel

gem

- gem aws-sdk-core
- gem thor
- gem io-console

# Install

sudo yum install gcc ruby-devel

bundle install

# Feature

## grep

Grep message in cloudwatch log streams of a cloudwatch group.

### Usage

  cwl-util grep STRING LOG_GROUP_NAME [-s start_time] [-e end_time] [-o output] [--debug]

### Options

-o, [--output=OUTPUT] # path to output file
  
[--debug], [--no-debug] # print log_stream_name and message to stdout
  
-s, [--start-time=N] # unixtimestamp as the number milliseconds, default : yesterday 00:00:00
  
-e, [--end-time=N] # unixtimestamp as the number milliseconds, default : today 00:00:00
  

### Example

* Set start_tmime and end_time.

  AWS_PROFILE=your_profile AWS_REGION=us-east-1 cwl-util 'string' 'your_log_stream' -s 1421161200000 -e 1421323200000

* Grep 'string' from 'yout_log_stream' all yesterday, and put result to output file.

  AWS_PROFILE=your_profile AWS_REGION=us-east-1 cwl-util 'string' 'your_log_stream' -o /path/to/output

* Debug ( prints stream_name and message to stdout ).

  AWS_PROFILE=your_profile AWS_REGION=us-east-1 cwl-util 'string' 'your_log_stream' -o /path/to/output --debug

# Todo

- spec (immediately!)
- all refacatoring

