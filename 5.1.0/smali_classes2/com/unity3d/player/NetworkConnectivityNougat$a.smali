.class Lcom/unity3d/player/NetworkConnectivityNougat$a;
.super Landroid/net/ConnectivityManager$NetworkCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/player/NetworkConnectivityNougat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/unity3d/player/NetworkConnectivityNougat;


# direct methods
.method constructor <init>(Lcom/unity3d/player/NetworkConnectivityNougat;)V
    .locals 0

    iput-object p1, p0, Lcom/unity3d/player/NetworkConnectivityNougat$a;->a:Lcom/unity3d/player/NetworkConnectivityNougat;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onAvailable(Landroid/net/Network;)V

    return-void
.end method

.method public onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/net/ConnectivityManager$NetworkCallback;->onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/unity3d/player/NetworkConnectivityNougat$a;->a:Lcom/unity3d/player/NetworkConnectivityNougat;

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/unity3d/player/NetworkConnectivityNougat$a;->a:Lcom/unity3d/player/NetworkConnectivityNougat;

    const/4 p2, 0x2

    :goto_0
    invoke-static {p1, p2}, Lcom/unity3d/player/NetworkConnectivityNougat;->-$$Nest$fputb(Lcom/unity3d/player/NetworkConnectivityNougat;I)V

    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onLost(Landroid/net/Network;)V

    iget-object p1, p0, Lcom/unity3d/player/NetworkConnectivityNougat$a;->a:Lcom/unity3d/player/NetworkConnectivityNougat;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/unity3d/player/NetworkConnectivityNougat;->-$$Nest$fputb(Lcom/unity3d/player/NetworkConnectivityNougat;I)V

    return-void
.end method

.method public onUnavailable()V
    .locals 2

    invoke-super {p0}, Landroid/net/ConnectivityManager$NetworkCallback;->onUnavailable()V

    iget-object v0, p0, Lcom/unity3d/player/NetworkConnectivityNougat$a;->a:Lcom/unity3d/player/NetworkConnectivityNougat;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/unity3d/player/NetworkConnectivityNougat;->-$$Nest$fputb(Lcom/unity3d/player/NetworkConnectivityNougat;I)V

    return-void
.end method
