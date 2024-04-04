.class public final synthetic Lcom/google/android/play/core/integrity/ad;
.super Ljava/lang/Object;
.source "com.google.android.play:integrity@@1.1.0-beta01"

# interfaces
.implements Lcom/google/android/play/integrity/internal/x;


# static fields
.field public static final synthetic a:Lcom/google/android/play/core/integrity/ad;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/play/core/integrity/ad;

    invoke-direct {v0}, Lcom/google/android/play/core/integrity/ad;-><init>()V

    sput-object v0, Lcom/google/android/play/core/integrity/ad;->a:Lcom/google/android/play/core/integrity/ad;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/IBinder;)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, Lcom/google/android/play/integrity/internal/m;->b(Landroid/os/IBinder;)Lcom/google/android/play/integrity/internal/n;

    move-result-object p1

    return-object p1
.end method
