.class final Lcom/unity3d/player/m;
.super Ljava/lang/Object;


# static fields
.field private static a:Z = false


# instance fields
.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unity3d/player/m;->b:Z

    iput-boolean v0, p0, Lcom/unity3d/player/m;->c:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/unity3d/player/m;->d:Z

    iput-boolean v0, p0, Lcom/unity3d/player/m;->e:Z

    return-void
.end method

.method static a()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/unity3d/player/m;->a:Z

    return-void
.end method

.method static b()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/unity3d/player/m;->a:Z

    return-void
.end method

.method static c()Z
    .locals 1

    sget-boolean v0, Lcom/unity3d/player/m;->a:Z

    return v0
.end method


# virtual methods
.method final a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/unity3d/player/m;->b:Z

    return-void
.end method

.method final b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/unity3d/player/m;->d:Z

    return-void
.end method

.method final c(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/unity3d/player/m;->e:Z

    return-void
.end method

.method final d(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/unity3d/player/m;->c:Z

    return-void
.end method

.method final d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/unity3d/player/m;->d:Z

    return v0
.end method

.method final e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/unity3d/player/m;->e:Z

    return v0
.end method

.method final e(Z)Z
    .locals 1

    sget-boolean v0, Lcom/unity3d/player/m;->a:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/unity3d/player/m;->b:Z

    if-eqz p1, :cond_1

    :cond_0
    iget-boolean p1, p0, Lcom/unity3d/player/m;->d:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/unity3d/player/m;->c:Z

    if-nez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method final f()Z
    .locals 1

    iget-boolean v0, p0, Lcom/unity3d/player/m;->c:Z

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
