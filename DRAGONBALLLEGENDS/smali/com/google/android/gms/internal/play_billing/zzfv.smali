.class public final Lcom/google/android/gms/internal/play_billing/zzfv;
.super Lcom/google/android/gms/internal/play_billing/zzcb;
.source "com.android.billingclient:billing@@5.2.1"

# interfaces
.implements Lcom/google/android/gms/internal/play_billing/zzdg;


# static fields
.field public static final synthetic zzb:I

.field private static final zzd:Lcom/google/android/gms/internal/play_billing/zzfv;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzfv;

    invoke-direct {v0}, Lcom/google/android/gms/internal/play_billing/zzfv;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/play_billing/zzfv;->zzd:Lcom/google/android/gms/internal/play_billing/zzfv;

    const-class v1, Lcom/google/android/gms/internal/play_billing/zzfv;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/play_billing/zzcb;->zzo(Ljava/lang/Class;Lcom/google/android/gms/internal/play_billing/zzcb;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/zzcb;-><init>()V

    return-void
.end method

.method static synthetic zzu()Lcom/google/android/gms/internal/play_billing/zzfv;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzfv;->zzd:Lcom/google/android/gms/internal/play_billing/zzfv;

    return-object v0
.end method


# virtual methods
.method protected final zzt(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    add-int/lit8 p1, p1, -0x1

    if-eqz p1, :cond_4

    const/4 p2, 0x2

    const/4 p3, 0x0

    if-eq p1, p2, :cond_3

    const/4 p2, 0x3

    if-eq p1, p2, :cond_2

    const/4 p2, 0x4

    if-eq p1, p2, :cond_1

    const/4 p2, 0x5

    if-eq p1, p2, :cond_0

    return-object p3

    .line 1
    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/play_billing/zzfv;->zzd:Lcom/google/android/gms/internal/play_billing/zzfv;

    return-object p1

    .line 3
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/play_billing/zzfu;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/play_billing/zzfu;-><init>(Lcom/google/android/gms/internal/play_billing/zzft;)V

    return-object p1

    .line 2
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/play_billing/zzfv;

    invoke-direct {p1}, Lcom/google/android/gms/internal/play_billing/zzfv;-><init>()V

    return-object p1

    .line 1
    :cond_3
    sget-object p1, Lcom/google/android/gms/internal/play_billing/zzfv;->zzd:Lcom/google/android/gms/internal/play_billing/zzfv;

    const-string p2, "\u0001\u0000"

    .line 2
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/play_billing/zzfv;->zzl(Lcom/google/android/gms/internal/play_billing/zzdf;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_4
    const/4 p1, 0x1

    .line 1
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
