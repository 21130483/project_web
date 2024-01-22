document.addEventListener('DOMContentLoaded', function () {
    // Get the master checkbox and all sub-checkboxes
    const masterCheckbox = document.getElementById('checkbox-all');
    const subCheckboxes = document.querySelectorAll('.checkbox-product');

    // Add an event listener to the master checkbox
    masterCheckbox.addEventListener('change', function () {
        // Set all sub-checkboxes to the same state as the master checkbox
        subCheckboxes.forEach(function (checkbox) {
            checkbox.checked = masterCheckbox.checked;
        });
    });

    // Add an event listener to each sub-checkbox
    subCheckboxes.forEach(function (checkbox) {
        checkbox.addEventListener('change', function () {
            // If any sub-checkbox is unchecked, uncheck the master checkbox
            if (!checkbox.checked) {
                masterCheckbox.checked = false;
            }
        });
    });
});
