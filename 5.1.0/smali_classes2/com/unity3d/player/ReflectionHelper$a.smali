.class Lcom/unity3d/player/ReflectionHelper$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/unity3d/player/ReflectionHelper$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/player/ReflectionHelper;->newProxyInstance(Lcom/unity3d/player/UnityPlayer;J[Ljava/lang/Class;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private a:Ljava/lang/Runnable;

.field private b:Lcom/unity3d/player/UnityPlayer;

.field private c:J

.field private d:J

.field private e:Z

.field final synthetic f:J


# direct methods
.method static bridge synthetic -$$Nest$fputd(Lcom/unity3d/player/ReflectionHelper$a;J)V
    .locals 0

    iput-wide p1, p0, Lcom/unity3d/player/ReflectionHelper$a;->d:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fpute(Lcom/unity3d/player/ReflectionHelper$a;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/unity3d/player/ReflectionHelper$a;->e:Z

    return-void
.end method

.method constructor <init>(JLcom/unity3d/player/UnityPlayer;[Ljava/lang/Class;)V
    .locals 2

    iput-wide p1, p0, Lcom/unity3d/player/ReflectionHelper$a;->f:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p4, Lcom/unity3d/player/ReflectionHelper$c;

    invoke-static {}, Lcom/unity3d/player/ReflectionHelper;->-$$Nest$sfgetb()J

    move-result-wide v0

    invoke-direct {p4, v0, v1, p1, p2}, Lcom/unity3d/player/ReflectionHelper$c;-><init>(JJ)V

    iput-object p4, p0, Lcom/unity3d/player/ReflectionHelper$a;->a:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/unity3d/player/ReflectionHelper$a;->b:Lcom/unity3d/player/UnityPlayer;

    iput-wide v0, p0, Lcom/unity3d/player/ReflectionHelper$a;->c:J

    return-void
.end method

.method private a(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    const/4 v0, 0x0

    if-nez p3, :cond_0

    :try_start_0
    new-array p3, v0, [Ljava/lang/Object;

    :cond_0
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/lang/invoke/MethodHandles$Lookup;

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/Class;

    aput-object v5, v4, v0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    new-array v4, v3, [Ljava/lang/Object;

    aput-object v1, v4, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v6

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/invoke/MethodHandles$Lookup;

    invoke-virtual {v2, v1}, Ljava/lang/invoke/MethodHandles$Lookup;->in(Ljava/lang/Class;)Ljava/lang/invoke/MethodHandles$Lookup;

    move-result-object v2

    invoke-virtual {v2, p2, v1}, Ljava/lang/invoke/MethodHandles$Lookup;->unreflectSpecial(Ljava/lang/reflect/Method;Ljava/lang/Class;)Ljava/lang/invoke/MethodHandle;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/invoke/MethodHandle;->bindTo(Ljava/lang/Object;)Ljava/lang/invoke/MethodHandle;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/invoke/MethodHandle;->invokeWithArguments([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "Java interface default methods are only supported since Android Oreo"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x6

    invoke-static {p2, p1}, Lcom/unity3d/player/u;->Log(ILjava/lang/String;)V

    iget-wide p1, p0, Lcom/unity3d/player/ReflectionHelper$a;->d:J

    invoke-static {p1, p2}, Lcom/unity3d/player/ReflectionHelper;->-$$Nest$smnativeProxyLogJNIInvokeException(J)V

    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method protected finalize()V
    .locals 2

    iget-object v0, p0, Lcom/unity3d/player/ReflectionHelper$a;->b:Lcom/unity3d/player/UnityPlayer;

    iget-object v1, p0, Lcom/unity3d/player/ReflectionHelper$a;->a:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/unity3d/player/UnityPlayer;->queueGLThreadEvent(Ljava/lang/Runnable;)V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    iget-wide v0, p0, Lcom/unity3d/player/ReflectionHelper$a;->c:J

    invoke-static {v0, v1}, Lcom/unity3d/player/ReflectionHelper;->beginProxyCall(J)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x6

    const-string p2, "Scripting proxy object was destroyed, because Unity player was unloaded."

    invoke-static {p1, p2}, Lcom/unity3d/player/u;->Log(ILjava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-wide/16 v0, 0x0

    :try_start_0
    iput-wide v0, p0, Lcom/unity3d/player/ReflectionHelper$a;->d:J

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/unity3d/player/ReflectionHelper$a;->e:Z

    iget-wide v2, p0, Lcom/unity3d/player/ReflectionHelper$a;->f:J

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4, p3}, Lcom/unity3d/player/ReflectionHelper;->-$$Nest$smnativeProxyInvoke(JLjava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iget-boolean v3, p0, Lcom/unity3d/player/ReflectionHelper$a;->e:Z

    if-eqz v3, :cond_2

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v0

    and-int/lit16 v0, v0, 0x400

    if-nez v0, :cond_1

    invoke-direct {p0, p1, p2, p3}, Lcom/unity3d/player/ReflectionHelper$a;->a(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/unity3d/player/ReflectionHelper;->endProxyCall()V

    return-object p1

    :cond_1
    :try_start_1
    iget-wide p1, p0, Lcom/unity3d/player/ReflectionHelper$a;->d:J

    :goto_0
    invoke-static {p1, p2}, Lcom/unity3d/player/ReflectionHelper;->-$$Nest$smnativeProxyLogJNIInvokeException(J)V

    goto :goto_1

    :cond_2
    iget-wide p1, p0, Lcom/unity3d/player/ReflectionHelper$a;->d:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    cmp-long p3, p1, v0

    if-eqz p3, :cond_3

    goto :goto_0

    :cond_3
    :goto_1
    invoke-static {}, Lcom/unity3d/player/ReflectionHelper;->endProxyCall()V

    return-object v2

    :catchall_0
    move-exception p1

    invoke-static {}, Lcom/unity3d/player/ReflectionHelper;->endProxyCall()V

    throw p1
.end method
