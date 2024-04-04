.class Lcom/unity3d/player/j;
.super Landroid/database/ContentObserver;


# instance fields
.field private final a:Lcom/unity3d/player/k;

.field private final b:Landroid/media/AudioManager;

.field private final c:I

.field private d:I


# direct methods
.method public constructor <init>(Lcom/unity3d/player/l;Landroid/os/Handler;Landroid/media/AudioManager;ILcom/unity3d/player/k;)V
    .locals 0

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    iput-object p3, p0, Lcom/unity3d/player/j;->b:Landroid/media/AudioManager;

    iput p4, p0, Lcom/unity3d/player/j;->c:I

    iput-object p5, p0, Lcom/unity3d/player/j;->a:Lcom/unity3d/player/k;

    invoke-virtual {p3, p4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result p1

    iput p1, p0, Lcom/unity3d/player/j;->d:I

    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    invoke-super {p0}, Landroid/database/ContentObserver;->deliverSelfNotifications()Z

    move-result v0

    return v0
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    iget-object p1, p0, Lcom/unity3d/player/j;->b:Landroid/media/AudioManager;

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/unity3d/player/j;->a:Lcom/unity3d/player/k;

    if-eqz p2, :cond_0

    iget p2, p0, Lcom/unity3d/player/j;->c:I

    invoke-virtual {p1, p2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result p1

    iget p2, p0, Lcom/unity3d/player/j;->d:I

    if-eq p1, p2, :cond_0

    iput p1, p0, Lcom/unity3d/player/j;->d:I

    iget-object p2, p0, Lcom/unity3d/player/j;->a:Lcom/unity3d/player/k;

    check-cast p2, Lcom/unity3d/player/AudioVolumeHandler;

    invoke-virtual {p2, p1}, Lcom/unity3d/player/AudioVolumeHandler;->onAudioVolumeChanged(I)V

    :cond_0
    return-void
.end method
