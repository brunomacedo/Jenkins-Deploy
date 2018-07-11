import { expect } from 'chai';

const first = 1;
const second = 2;
const third = 3;

describe('Jenkins Deploy Tests', () => {
  it('Should run test 1', () => {
    expect(first).to.be.equal(1);
  });

  it('Should run test 2', () => {
    expect(second).to.be.equal(2);
  });

  it('Should run test 3', () => {
    expect(third).to.be.equal(3);
  });
});
