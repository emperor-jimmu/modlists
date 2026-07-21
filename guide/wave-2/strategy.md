# Wave 2 Strategy Guide

## Efficiency at Industrial Scale

In Wave 2, you're not managing a farm — you're running an agricultural corporation. Efficiency at this scale is about systems, not shortcuts.

### The Fleet, Not the Machine

Stop thinking about individual vehicles. Think in fleets:

- **Tillage fleet**: All cultivators, plows, and disc harrows serviced and fueled together. They deploy to fields as a unit. If one breaks, the fleet absorbs the downtime.
- **Harvest fleet**: Combines, grain carts, and transport trucks form a single harvest system. A combine without a grain cart is useless. Plan them as a package.
- **Transport fleet**: Dedicated road tractors and trucks that never touch a field. They move goods between silos, production buildings, and sell points. Keep them on pavement.

Synchronize maintenance cycles across fleets. If your entire tillage fleet goes in for service on the same winter day, you're not losing planting time in spring. Staggered maintenance means staggered downtime.

### Coordinated Harvest Operations

The harvest is the highest-stakes operation on the farm. A mistimed harvest loses crops to withering. Here's the industrial approach:

1. **Pre-harvest checklist**: Every combine inspected, every grain cart fueled, every trailer hitched, every CoursePlay route verified. Do this the night before. Harvest morning is not debugging time.
2. **Stagger field starts**: Don't start all fields on the same day. Harvest largest field first (longest to complete, most exposure to weather change). Harvest adjacent fields together (minimize equipment relocation). Leave 1–2 days between field starts so transport isn't overwhelmed.
3. **Dedicated roles**: One player (or CoursePlay instance) per role. Combine operator, grain cart driver, transport driver, silo manager. No one switches roles mid-harvest. Role-switching is where mistakes happen.
4. **Buffer capacity**: Always have one extra trailer than you think you need. The cost of a parked trailer is negligible. The cost of a combine idling with a full hopper is lost profit per minute.

### The 80/20 Rule of Transport

80% of your non-field time is spent driving between points. Eliminate it:

- **On-farm silos at every major field cluster**: Drive distance from field to storage should be under 60 seconds. Build silos where your fields are, not where your farmhouse is.
- **Dedicated sell-point routes**: Pre-configure WayPoint GPS routes from each production building to the highest-paying sell point for that product. One click, the truck drives itself.
- **Production proximity**: Place processing buildings near the fields that supply them. A grain mill next to a wheat field eliminates the longest leg of transport entirely.
- **Night transport**: Use CoursePlay to run transport convoys overnight. Queue up sell orders, set the routes, and let the fleet work while you sleep (or while you manage the next operation).

### Advanced Helper — Your New Workforce

Wave 2's Advanced Helper mod replaces base-game AI workers with a proper employee system:

- Workers gain skills with experience — a 50-hour veteran outperforms a fresh hire
- Assign workers to permanent roles rather than ad-hoc tasks. A transport specialist never does field work. A tillage specialist is your cultivator.
- Hire slow, fire fast. A worker with low skill drags down your entire operation. Pay the premium for experienced hires.
- Track worker hours. If someone's been at 100% workload for two seasons, you need another hire in that role.

## How to Grow Your Business in Wave 2

### From Wine to Wheat — The Portfolio Approach

Wave 2 is on a large American map where scale replaces craft. Your business model shifts:

- **Wave 1**: High-value specialty products (wine, beer). High margin, low volume. Craftsmanship.
- **Wave 2**: Commodity crops at scale (wheat, corn, soybeans, potatoes). Low margin per unit, enormous volume. The money is in throughput, not unit price. A 1% margin improvement on 500,000 liters is real money.

### Capital Allocation Framework

When you have cash to deploy, rank opportunities by **return on investment per season**:

1. **Production buildings** (highest ROI): Turn raw crops into processed goods. A grain mill can pay for itself in 2–3 harvests. Always your best first investment.
2. **Fields** (medium-high ROI): More land = more raw material. But fields only pay back if your production buildings have spare capacity. Buying a field when your mill is already maxed out just means selling raw grain at commodity prices instead of processed prices. That's leaving money on the table.
3. **Equipment upgrades** (medium ROI): A wider combine covers more acres per hour, but only matters if you have the acres to cover. Upgrade equipment when field work time is your bottleneck. Don't upgrade if transport or processing capacity is the real constraint.
4. **Storage** (low but essential ROI): Silos and warehouses don't directly generate revenue, but insufficient storage means selling at low prices because you can't hold for the peak. Storage pays for itself indirectly.

### The Loan as a Tool, Not a Crutch

At industrial scale, debt is leverage:

- **Good debt**: A loan to build a production building that generates more monthly income than the interest payment. The building pays for itself while you sleep.
- **Bad debt**: A loan to buy equipment you could have leased. If the equipment earns less per season than the interest on the loan, you're losing money every day.
- **Emergency debt**: A loan to cover operating costs because you spent your cash reserves. This is the beginning of a death spiral. Maintain a minimum cash buffer equal to one full season of operating expenses (seed, fertilizer, maintenance, worker wages).

### Market Timing at Scale

When you're producing hundreds of thousands of liters per season, price timing is no longer optional — it's existential:

- **Track price cycles**: Most commodities have seasonal price patterns. Grain peaks in winter (supply is low, demand is steady). Know the cycle for every crop you produce.
- **Never sell at harvest**: Prices are lowest when supply is highest (everyone is selling). Store everything. Wait for the winter peak. The silo pays for itself in one cycle.
- **Diversify sell points**: Don't dump everything at one buyer. Prices drop when you flood a sell point. Spread sales across multiple buyers and multiple days.
- **The Production Storage Control mod** (PSC, in Wave 2): Manually trigger pallet spawning. Wait for peak prices, then spawn and sell everything at once. This is the single most profitable tool in Wave 2.

## Expansion — Thinking in Square Miles

### Land Acquisition Strategy

In Wave 2, you're not buying fields — you're acquiring production capacity:

- **Consolidate, don't scatter**: Buy adjacent fields. Non-adjacent fields create transport overhead that compounds with every operation, every season, forever. One contiguous block of 200 acres is worth more than four scattered 50-acre fields.
- **Field shape matters at scale**: CoursePlay handles rectangles best. Odd-shaped fields create wasted overlap, missed corners, and babysitting overhead. At 200+ acres, a field with 10% wasted overlap costs you 20 acres of input, output, and time — per season, forever. Buy rectangular fields or use the map editor to square off irregular ones.
- **Soil quality as purchase criteria**: With Precision Farming (Wave 1 carried forward) and Realistic Soil & Fertilizer (Wave 2), soil quality varies across the map. Two fields of equal size can produce 30% different yields. Scout soil maps before writing a check.
- **Water access**: Fields near rivers or lakes support cheaper irrigation. Fields far from water need expensive water transport infrastructure.

### Equipment Fleet Sizing

The right fleet size is a math problem:

- **Tractors**: One for every 100 acres of row crops. One dedicated transport tractor per production cluster. One backup tractor for when something breaks.
- **Combines**: One combine can harvest roughly 20–25 acres per game day. If you have 200 acres of grain, you need 2 combines (2 × 20 = 40 acres/day = 5-day harvest window, which is tight but manageable). Three combines would be safer.
- **Grain carts**: One per combine. No exceptions. A combine without a dedicated grain cart is a parked combine.
- **Trailers**: Two per grain cart (one at the field, one at the silo). The shuttle system keeps combines moving.

### Production Chain Scaling

When a production line maxes out, you have three choices:

1. **Add a second building** of the same type (horizontal scaling): Simple, expensive in space, doubles your maintenance. Good for grain mills near a second field cluster.
2. **Upgrade to a larger building** (vertical scaling, mod-dependent): Fewer structures to manage, usually more cost-efficient per unit of output. Check if larger-capacity production buildings exist for your chain.
3. **Add a downstream building** (deepening the chain): Instead of a second grain mill, add a bakery. Flour → bread has a better margin than flour alone. Deepening the chain usually beats widening it.

### When to Hire vs. Automate

- **Hire Advanced Helpers for**: Field work that requires judgment (headlands, irregular fields, crop-specific adjustments). Workers with high skill outperform CoursePlay on complex fields.
- **Use CoursePlay for**: Repetitive straight-line work, vineyard rows, and transport routes. Saved courses mean zero setup time next season.
- **The hybrid approach**: One skilled Advanced Helper works the headlands while CoursePlay handles the straight-line middle passes. Best of both worlds. No babysitting, no wasted corners.

### Signs You've Outgrown Your Map

- You're buying fields just because they're available, not because you need the capacity
- Your production buildings are all maxed out, you have surplus raw materials, and there's no room to place more buildings
- Transport times between your farthest fields exceed 5 real minutes
- You own more than 50% of the arable land on the map
- You can't remember the last time you actually drove a tractor yourself

At this point, you've won the map. The challenge isn't the game anymore — it's whether you can build an operation that runs itself. That's the real endgame. A farm where you make decisions and the machines execute them. Where the money compounds while you watch the sunset from the porch of a farmhouse you earned.

That's what the three waves built. A homestead nobody wanted. A vineyard everybody wanted. An empire only you could build.
