import XCTest
@testable import PrimeNumberChecker

final class PrimeCheckerTests: XCTestCase {
    
    var primeChecker: PrimeCheckerView!
    
    override func setUp() {
        super.setUp()
        primeChecker = PrimeCheckerView()
    }
    
    func testPrimeNumbers() {
        XCTAssertTrue(primeChecker.isPrime(2), "2 should be a prime number")
        XCTAssertTrue(primeChecker.isPrime(3), "3 should be a prime number")
        XCTAssertTrue(primeChecker.isPrime(5), "5 should be a prime number")
        XCTAssertTrue(primeChecker.isPrime(7), "7 should be a prime number")
        XCTAssertTrue(primeChecker.isPrime(11), "11 should be a prime number")
        XCTAssertTrue(primeChecker.isPrime(97), "97 should be a prime number")
    }
    
    func testNonPrimeNumbers() {
        XCTAssertFalse(primeChecker.isPrime(1), "1 is not a prime number")
        XCTAssertFalse(primeChecker.isPrime(4), "4 is not a prime number")
        XCTAssertFalse(primeChecker.isPrime(6), "6 is not a prime number")
        XCTAssertFalse(primeChecker.isPrime(9), "9 is not a prime number")
        XCTAssertFalse(primeChecker.isPrime(100), "100 is not a prime number")
    }
    
    func testNegativeNumbers() {
        XCTAssertFalse(primeChecker.isPrime(-1), "-1 is not a prime number")
        XCTAssertFalse(primeChecker.isPrime(-7), "-7 is not a prime number")
        XCTAssertFalse(primeChecker.isPrime(-13), "-13 is not a prime number")
    }
    
    func testLargePrimeNumber() {
        XCTAssertTrue(primeChecker.isPrime(7919), "7919 should be a prime number")
    }
    
    func testLargeNonPrimeNumber() {
        XCTAssertFalse(primeChecker.isPrime(8000), "8000 is not a prime number")
    }
}
