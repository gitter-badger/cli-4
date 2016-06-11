import algorithm, sequtils
import random, random.mersenne, random.urandom
import needs.catering

type
  Hygiene * = ref object of RootObj
    shower: float
    toilet: float
    maintanance: float
  Health * = ref object of RootObj
    doctorVisits: float
    vaccination: float
  Care * = ref object of RootObj
    fun: float
    love: float
    training: float
  Needs = ref object of RootObj
    care: ref Care
    catering: ref Catering
    health: ref Health
    hygiene: ref Hygiene
  Baseline * = ref object of Needs
  Status * = ref object of Needs
    energy: float
    knowledge: float
  Influence * = ref object of Needs
  Evolution * = ref object of Needs


proc newBaseLine * (race: string): Baseline =
  discard # implement Baseline parser
