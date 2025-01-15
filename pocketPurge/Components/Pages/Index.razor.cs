using Microsoft.AspNetCore.Components;


namespace pocketPurge.Components.Pages
{
    public partial class Index : ComponentBase
    {
        protected override void OnInitialized()
        {
            Nav.NavigateTo("/login");
        }
    }
}
