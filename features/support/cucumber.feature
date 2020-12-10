# Tạo mới 1 file feature
# viết Test Case dưới dạng Gherkin cho chức năng đăng nhập cho trang web http://the-internet.herokuapp.com/login
## Phải có đủ 2 Scenarios: 1 valid – 2 invalid
## Phải dùng Scenario Outline để thử với nhiều loại Test Data khác nhau
## Hiện thông báo ”Invalid account” khi sai username/password
## Homepage xuất hiện khi đăng nhập thành công

Feature: Practice to test login function
    As a test fresher,
    I want to login herokuapp page,
    So I can practice about Cucumber Selenium WebDriver.

    Scenario Outline: Test login function
        Given the login herokuapp page is opended successfully
        When user insert "<Username>" and "<Password>"
        Then the direct page will show proper "<Message>"

        Examples:
            | Username | Password             | Message                           |
            | tomsmith | SuperSecretPassword! | You logged into a secure area!\n× |
            | tomsmith | SecretPassword!      | Your password is invalid!\n×      |
            | test111  | SuperSecretPassword! | Your username is invalid!\n×      |
            | test111  | 1q2w3e4r             | Your username is invalid!\n×      |

