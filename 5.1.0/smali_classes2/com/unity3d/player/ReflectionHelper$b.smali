.class Lcom/unity3d/player/ReflectionHelper$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/player/ReflectionHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private final a:Ljava/lang/Class;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:I

.field public volatile e:Ljava/lang/reflect/Member;


# direct methods
.method static bridge synthetic -$$Nest$fgetd(Lcom/unity3d/player/ReflectionHelper$b;)I
    .locals 0

    iget p0, p0, Lcom/unity3d/player/ReflectionHelper$b;->d:I

    return p0
.end method

.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unity3d/player/ReflectionHelper$b;->a:Ljava/lang/Class;

    iput-object p2, p0, Lcom/unity3d/player/ReflectionHelper$b;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/unity3d/player/ReflectionHelper$b;->c:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    add-int/lit16 p1, p1, 0x20f

    mul-int/lit8 p1, p1, 0x1f

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p2

    add-int/2addr p1, p2

    mul-int/lit8 p1, p1, 0x1f

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p0, Lcom/unity3d/player/ReflectionHelper$b;->d:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/unity3d/player/ReflectionHelper$b;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Lcom/unity3d/player/ReflectionHelper$b;

    iget v1, p0, Lcom/unity3d/player/ReflectionHelper$b;->d:I

    iget v3, p1, Lcom/unity3d/player/ReflectionHelper$b;->d:I

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lcom/unity3d/player/ReflectionHelper$b;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/unity3d/player/ReflectionHelper$b;->c:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/unity3d/player/ReflectionHelper$b;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/unity3d/player/ReflectionHelper$b;->b:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/unity3d/player/ReflectionHelper$b;->a:Ljava/lang/Class;

    iget-object p1, p1, Lcom/unity3d/player/ReflectionHelper$b;->a:Ljava/lang/Class;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lcom/unity3d/player/ReflectionHelper$b;->d:I

    return v0
.end method
