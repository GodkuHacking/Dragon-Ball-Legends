.class public Lcom/unity3d/player/AudioVolumeHandler;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/unity3d/player/b$b;


# instance fields
.field private a:Lcom/unity3d/player/b;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/unity3d/player/b;

    invoke-direct {v0, p1}, Lcom/unity3d/player/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/unity3d/player/AudioVolumeHandler;->a:Lcom/unity3d/player/b;

    invoke-virtual {v0, p0}, Lcom/unity3d/player/b;->a(Lcom/unity3d/player/b$b;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/unity3d/player/AudioVolumeHandler;->a:Lcom/unity3d/player/b;

    invoke-virtual {v0}, Lcom/unity3d/player/b;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unity3d/player/AudioVolumeHandler;->a:Lcom/unity3d/player/b;

    return-void
.end method

.method public final native onAudioVolumeChanged(I)V
.end method
