import { sum } from '../src/app';

describe('sum function', () => {
  test('should return the sum of two numbers', () => {
    expect(sum(2, 3)).toBe(5);
  });

  test('should return 0 when both numbers are 0', () => {
    expect(sum(0, 0)).toBe(0);
  });

  test('should return a negative number when one of the numbers is negative', () => {
    expect(sum(-5, 3)).toBe(-2);
  });
});