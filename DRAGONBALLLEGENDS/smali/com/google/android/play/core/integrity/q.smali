.class final Lcom/google/android/play/core/integrity/q;
.super Ljava/lang/Object;
.source "com.google.android.play:integrity@@1.1.0-beta01"

# interfaces
.implements Lcom/google/android/play/core/integrity/x;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/play/core/integrity/p;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Lcom/google/android/play/core/integrity/q;
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Lcom/google/android/play/core/integrity/q;->a:Landroid/content/Context;

    return-object p0

    :cond_0
    const/4 p1, 0x0

    throw p1
.end method

.method public final b()Lcom/google/android/play/core/integrity/s;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/integrity/q;->a:Landroid/content/Context;

    const-class v1, Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/google/android/play/integrity/internal/ak;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    new-instance v0, Lcom/google/android/play/core/integrity/s;

    iget-object v1, p0, Lcom/google/android/play/core/integrity/q;->a:Landroid/content/Context;

    const/4 v2, 0x0

    .line 2
    invoke-direct {v0, v1, v2}, Lcom/google/android/play/core/integrity/s;-><init>(Landroid/content/Context;Lcom/google/android/play/core/integrity/r;)V

    return-object v0
.end method
