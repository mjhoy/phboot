Feature: Generating html from jpgs

  In order to put photos online very easily and
  in the way I want them,
  As a super lazy kinda-geek photog,
  I want a script takes a directory of images and
  generates the html necessary to view them.

  Scenario: empty directory
    Given a directory named "foo"
    When I cd to "foo"
    When I run phboot
    Then the output should contain "go shoot some photos!"
