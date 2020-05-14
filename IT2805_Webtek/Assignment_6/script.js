function beregnTax() {
    const income= document.getElementById("income").value;
    const wealth=document.getElementById("wealth").value;
    document.getElementById("tax").value=((0.35 * income) + (0.25 * wealth));
}