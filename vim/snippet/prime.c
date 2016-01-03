int i, j, cnt = 0;
int isPrime[PRIME_BOUND+1], prime[PRIME_BOUND+1];
for (i = 0; i <= PRIME_BOUND; i++) isPrime[i] = 1;
isPrime[0] = isPrime[1] = 0;
for (i = 2; i <= PRIME_BOUND; i++) if (isPrime[i] == 1) {
    prime[cnt++] = i;
    for (j = i+i; j <= PRIME_BOUND; j += i) isPrime[j] = 0;
}
