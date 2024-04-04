.class public final Lcom/google/android/gms/internal/measurement/zzoj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@21.3.0"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzim;


# static fields
.field private static final zza:Lcom/google/android/gms/internal/measurement/zzoj;


# instance fields
.field private final zzb:Lcom/google/android/gms/internal/measurement/zzim;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzoj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzoj;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzoj;->zza:Lcom/google/android/gms/internal/measurement/zzoj;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzol;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzol;-><init>()V

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzir;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzim;

    move-result-object v0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzir;->zza(Lcom/google/android/gms/internal/measurement/zzim;)Lcom/google/android/gms/internal/measurement/zzim;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzoj;->zzb:Lcom/google/android/gms/internal/measurement/zzim;

    return-void
.end method

.method public static zzA()J
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzoj;->zza:Lcom/google/android/gms/internal/measurement/zzoj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzoj;->zzK()Lcom/google/android/gms/internal/measurement/zzok;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzok;->zzz()J

    move-result-wide v0

    return-wide v0
.end method

.method public static zzB()J
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzoj;->zza:Lcom/google/android/gms/internal/measurement/zzoj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzoj;->zzK()Lcom/google/android/gms/internal/measurement/zzok;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzok;->zzA()J

    move-result-wide v0

    return-wide v0
.end method

.method public static zzC()J
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzoj;->zza:Lcom/google/android/gms/internal/measurement/zzoj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzoj;->zzK()Lcom/google/android/gms/internal/measurement/zzok;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzok;->zzB()J

    move-result-wide v0

    return-wide v0
.end method

.method public static zzD()J
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzoj;->zza:Lcom/google/android/gms/internal/measurement/zzoj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzoj;->zzK()Lcom/google/android/gms/internal/measurement/zzok;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzok;->zzC()J

    move-result-wide v0

    return-wide v0
.end method

.method public static zzE()J
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzoj;->zza:Lcom/google/android/gms/internal/measurement/zzoj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzoj;->zzK()Lcom/google/android/gms/internal/measurement/zzok;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzok;->zzD()J

    move-result-wide v0

    return-wide v0
.end method

.method public static zzF()J
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzoj;->zza:Lcom/google/android/gms/internal/measurement/zzoj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzoj;->zzK()Lcom/google/android/gms/internal/measurement/zzok;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzok;->zzE()J

    move-result-wide v0

    return-wide v0
.end method

.method public static zzG()J
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzoj;->zza:Lcom/google/android/gms/internal/measurement/zzoj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzoj;->zzK()Lcom/google/android/gms/internal/measurement/zzok;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzok;->zzF()J

    move-result-wide v0

    return-wide v0
.end method

.method public static zzH()J
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzoj;->zza:Lcom/google/android/gms/internal/measurement/zzoj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzoj;->zzK()Lcom/google/android/gms/internal/measurement/zzok;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzok;->zzG()J

    move-result-wide v0

    return-wide v0
.end method

.method public static zzI()J
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzoj;->zza:Lcom/google/android/gms/internal/measurement/zzoj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzoj;->zzK()Lcom/google/android/gms/internal/measurement/zzok;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzok;->zzH()J

    move-result-wide v0

    return-wide v0
.end method

.method public static zzJ()J
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzoj;->zza:Lcom/google/android/gms/internal/measurement/zzoj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzoj;->zzK()Lcom/google/android/gms/internal/measurement/zzok;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzok;->zzI()J

    move-result-wide v0

    return-wide v0
.end method

.method public static zzL()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzoj;->zza:Lcom/google/android/gms/internal/measurement/zzoj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzoj;->zzK()Lcom/google/android/gms/internal/measurement/zzok;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzok;->zzJ()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static zzM()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzoj;->zza:Lcom/google/android/gms/internal/measurement/zzoj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzoj;->zzK()Lcom/google/android/gms/internal/measurement/zzok;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzok;->zzK()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static zzN()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzoj;->zza:Lcom/google/android/gms/internal/measurement/zzoj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzoj;->zzK()Lcom/google/android/gms/internal/measurement/zzok;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzok;->zzL()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static zzb()J
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzoj;->zza:Lcom/google/android/gms/internal/measurement/zzoj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzoj;->zzK()Lcom/google/android/gms/internal/measurement/zzok;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzok;->zza()J

    move-result-wide v0

    return-wide v0
.end method

.method public static zzc()J
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzoj;->zza:Lcom/google/android/gms/internal/measurement/zzoj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzoj;->zzK()Lcom/google/android/gms/internal/measurement/zzok;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzok;->zzb()J

    move-result-wide v0

    return-wide v0
.end method

.method public static zzd()J
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzoj;->zza:Lcom/google/android/gms/internal/measurement/zzoj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzoj;->zzK()Lcom/google/android/gms/internal/measurement/zzok;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzok;->zzc()J

    move-result-wide v0

    return-wide v0
.end method

.method public static zze()J
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzoj;->zza:Lcom/google/android/gms/internal/measurement/zzoj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzoj;->zzK()Lcom/google/android/gms/internal/measurement/zzok;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzok;->zzd()J

    move-result-wide v0

    return-wide v0
.end method

.method public static zzf()J
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzoj;->zza:Lcom/google/android/gms/internal/measurement/zzoj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzoj;->zzK()Lcom/google/android/gms/internal/measurement/zzok;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzok;->zze()J

    move-result-wide v0

    return-wide v0
.end method

.method public static zzg()J
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzoj;->zza:Lcom/google/android/gms/internal/measurement/zzoj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzoj;->zzK()Lcom/google/android/gms/internal/measurement/zzok;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzok;->zzf()J

    move-result-wide v0

    return-wide v0
.end method

.method public static zzh()J
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzoj;->zza:Lcom/google/android/gms/internal/measurement/zzoj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzoj;->zzK()Lcom/google/android/gms/internal/measurement/zzok;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzok;->zzg()J

    move-result-wide v0

    return-wide v0
.end method

.method public static zzi()J
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzoj;->zza:Lcom/google/android/gms/internal/measurement/zzoj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzoj;->zzK()Lcom/google/android/gms/internal/measurement/zzok;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzok;->zzh()J

    move-result-wide v0

    return-wide v0
.end method

.method public static zzj()J
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzoj;->zza:Lcom/google/android/gms/internal/measurement/zzoj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzoj;->zzK()Lcom/google/android/gms/internal/measurement/zzok;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzok;->zzi()J

    move-result-wide v0

    return-wide v0
.end method

.method public static zzk()J
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzoj;->zza:Lcom/google/android/gms/internal/measurement/zzoj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzoj;->zzK()Lcom/google/android/gms/internal/measurement/zzok;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzok;->zzj()J

    move-result-wide v0

    return-wide v0
.end method

.method public static zzl()J
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzoj;->zza:Lcom/google/android/gms/internal/measurement/zzoj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzoj;->zzK()Lcom/google/android/gms/internal/measurement/zzok;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzok;->zzk()J

    move-result-wide v0

    return-wide v0
.end method

.method public static zzm()J
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzoj;->zza:Lcom/google/android/gms/internal/measurement/zzoj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzoj;->zzK()Lcom/google/android/gms/internal/measurement/zzok;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzok;->zzl()J

    move-result-wide v0

    return-wide v0
.end method

.method public static zzn()J
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzoj;->zza:Lcom/google/android/gms/internal/measurement/zzoj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzoj;->zzK()Lcom/google/android/gms/internal/measurement/zzok;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzok;->zzm()J

    move-result-wide v0

    return-wide v0
.end method

.method public static zzo()J
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzoj;->zza:Lcom/google/android/gms/internal/measurement/zzoj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzoj;->zzK()Lcom/google/android/gms/internal/measurement/zzok;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzok;->zzn()J

    move-result-wide v0

    return-wide v0
.end method

.method public static zzp()J
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzoj;->zza:Lcom/google/android/gms/internal/measurement/zzoj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzoj;->zzK()Lcom/google/android/gms/internal/measurement/zzok;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzok;->zzo()J

    move-result-wide v0

    return-wide v0
.end method

.method public static zzq()J
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzoj;->zza:Lcom/google/android/gms/internal/measurement/zzoj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzoj;->zzK()Lcom/google/android/gms/internal/measurement/zzok;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzok;->zzp()J

    move-result-wide v0

    return-wide v0
.end method

.method public static zzr()J
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzoj;->zza:Lcom/google/android/gms/internal/measurement/zzoj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzoj;->zzK()Lcom/google/android/gms/internal/measurement/zzok;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzok;->zzq()J

    move-result-wide v0

    return-wide v0
.end method

.method public static zzs()J
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzoj;->zza:Lcom/google/android/gms/internal/measurement/zzoj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzoj;->zzK()Lcom/google/android/gms/internal/measurement/zzok;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzok;->zzr()J

    move-result-wide v0

    return-wide v0
.end method

.method public static zzt()J
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzoj;->zza:Lcom/google/android/gms/internal/measurement/zzoj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzoj;->zzK()Lcom/google/android/gms/internal/measurement/zzok;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzok;->zzs()J

    move-result-wide v0

    return-wide v0
.end method

.method public static zzu()J
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzoj;->zza:Lcom/google/android/gms/internal/measurement/zzoj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzoj;->zzK()Lcom/google/android/gms/internal/measurement/zzok;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzok;->zzt()J

    move-result-wide v0

    return-wide v0
.end method

.method public static zzv()J
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzoj;->zza:Lcom/google/android/gms/internal/measurement/zzoj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzoj;->zzK()Lcom/google/android/gms/internal/measurement/zzok;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzok;->zzu()J

    move-result-wide v0

    return-wide v0
.end method

.method public static zzw()J
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzoj;->zza:Lcom/google/android/gms/internal/measurement/zzoj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzoj;->zzK()Lcom/google/android/gms/internal/measurement/zzok;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzok;->zzv()J

    move-result-wide v0

    return-wide v0
.end method

.method public static zzx()J
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzoj;->zza:Lcom/google/android/gms/internal/measurement/zzoj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzoj;->zzK()Lcom/google/android/gms/internal/measurement/zzok;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzok;->zzw()J

    move-result-wide v0

    return-wide v0
.end method

.method public static zzy()J
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzoj;->zza:Lcom/google/android/gms/internal/measurement/zzoj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzoj;->zzK()Lcom/google/android/gms/internal/measurement/zzok;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzok;->zzx()J

    move-result-wide v0

    return-wide v0
.end method

.method public static zzz()J
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzoj;->zza:Lcom/google/android/gms/internal/measurement/zzoj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzoj;->zzK()Lcom/google/android/gms/internal/measurement/zzok;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzok;->zzy()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public final zzK()Lcom/google/android/gms/internal/measurement/zzok;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzoj;->zzb:Lcom/google/android/gms/internal/measurement/zzim;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzim;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzok;

    return-object v0
.end method

.method public final bridge synthetic zza()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzoj;->zzK()Lcom/google/android/gms/internal/measurement/zzok;

    move-result-object v0

    return-object v0
.end method
