live_loop :well do
  sample :loop_industrial, beat_stretch: choose([2,8])
  sleep 2
end

live_loop :foo do
  sample :loop_garzul, beat_stretch: 8
  sleep choose([8, 12])
end

live_loop :foo2 do
  sample :drum_cymbal_closed, amp: 0.2, rate: rand(), release: 0.001
  sleep 1.0 / 8
end

with_fx :bitcrusher do
  live_loop :foo3 do
    use_synth :prophet
    play choose([:E2, :G4, :G3, :Fs2, :Fs1]), release: choose([0.1, 0.4, 0.25])
    sleep choose([1.0 / 4, 1.0 / 8])
  end
end

with_fx :flanger do
  live_loop :foo4 do
    sample :drum_roll, rate: 0.1, amp: 0.5
    sleep 10
  end
end

with_fx :bitcrusher do
  live_loop :foo5 do
    use_synth :blade
    play choose([:E, :G, :Fs]), release: 5, attack: 5, amp: 1
    sleep choose([10, 5, 20])
  end
end

