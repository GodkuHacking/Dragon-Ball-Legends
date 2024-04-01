.class final Lcom/google/android/gms/measurement/internal/zzhu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@20.0.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/measurement/internal/zzag;

.field final synthetic zzb:J

.field final synthetic zzc:I

.field final synthetic zzd:J

.field final synthetic zze:Z

.field final synthetic zzf:Lcom/google/android/gms/measurement/internal/zzia;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzia;Lcom/google/android/gms/measurement/internal/zzag;JIJZ)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzhu;->zzf:Lcom/google/android/gms/measurement/internal/zzia;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzhu;->zza:Lcom/google/android/gms/measurement/internal/zzag;

    iput-wide p3, p0, Lcom/google/android/gms/measurement/internal/zzhu;->zzb:J

    iput p5, p0, Lcom/google/android/gms/measurement/internal/zzhu;->zzc:I

    iput-wide p6, p0, Lcom/google/android/gms/measurement/internal/zzhu;->zzd:J

    iput-boolean p8, p0, Lcom/google/android/gms/measurement/internal/zzhu;->zze:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhu;->zzf:Lcom/google/android/gms/measurement/internal/zzia;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzhu;->zza:Lcom/google/android/gms/measurement/internal/zzag;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzia;->zzW(Lcom/google/android/gms/measurement/internal/zzag;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhu;->zzf:Lcom/google/android/gms/measurement/internal/zzia;

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/zzhu;->zzb:J

    const/4 v3, 0x0

    .line 2
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzia;->zzL(JZ)V

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzhu;->zzf:Lcom/google/android/gms/measurement/internal/zzia;

    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zzhu;->zza:Lcom/google/android/gms/measurement/internal/zzag;

    iget v6, p0, Lcom/google/android/gms/measurement/internal/zzhu;->zzc:I

    iget-wide v7, p0, Lcom/google/android/gms/measurement/internal/zzhu;->zzd:J

    iget-boolean v10, p0, Lcom/google/android/gms/measurement/internal/zzhu;->zze:Z

    const/4 v9, 0x1

    .line 3
    invoke-static/range {v4 .. v10}, Lcom/google/android/gms/measurement/internal/zzia;->zzv(Lcom/google/android/gms/measurement/internal/zzia;Lcom/google/android/gms/measurement/internal/zzag;IJZZ)V

    return-void
.end method
