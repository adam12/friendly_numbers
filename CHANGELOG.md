# master

# 0.6.0 (2020-05-14)
- BREAKING: `number_to_currency` no longer rounds when truncating to precision
- `number_to_currency` properly handles partitioning of larger negative numbers (#2)

# 0.5.0 (2019-03-28)
- Properly escape percent sign in percentage helper
- Fix handling of whole numbers in currency helper
- Fix decimal precision in currency helper

# 0.4.0 (2017-11-16)
- Ignore rational when passed to seconds_to_time

# 0.3.0 (2017-04-22)
- Add seconds_to_time helper.

# 0.2.0
- Add number_to_percentage helper.
- Separate currency into thousands.

# 0.1.0
- Add number_to_currency helper.
- Add number_to_human_size helper.
