.class final Lcom/google/android/gms/internal/firebase_messaging/zzn;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-messaging@@23.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/firebase_messaging/zzs;


# instance fields
.field private final zza:I

.field private final zzb:Lcom/google/android/gms/internal/firebase_messaging/zzr;


# direct methods
.method constructor <init>(ILcom/google/android/gms/internal/firebase_messaging/zzr;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/firebase_messaging/zzn;->zza:I

    iput-object p2, p0, Lcom/google/android/gms/internal/firebase_messaging/zzn;->zzb:Lcom/google/android/gms/internal/firebase_messaging/zzr;

    return-void
.end method


# virtual methods
.method public final annotationType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/google/android/gms/internal/firebase_messaging/zzs;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/firebase_messaging/zzs;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/firebase_messaging/zzs;

    iget v1, p0, Lcom/google/android/gms/internal/firebase_messaging/zzn;->zza:I

    .line 3
    invoke-interface {p1}, Lcom/google/android/gms/internal/firebase_messaging/zzs;->zza()I

    move-result v3

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_messaging/zzn;->zzb:Lcom/google/android/gms/internal/firebase_messaging/zzr;

    .line 4
    invoke-interface {p1}, Lcom/google/android/gms/internal/firebase_messaging/zzs;->zzb()Lcom/google/android/gms/internal/firebase_messaging/zzr;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/firebase_messaging/zzr;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/firebase_messaging/zzn;->zza:I

    const v1, 0xde0d66

    xor-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_messaging/zzn;->zzb:Lcom/google/android/gms/internal/firebase_messaging/zzr;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase_messaging/zzr;->hashCode()I

    move-result v1

    const v2, 0x79ad669e

    xor-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "@com.google.firebase.encoders.proto.Protobuf"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "(tag="

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/gms/internal/firebase_messaging/zzn;->zza:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "intEncoding="

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_messaging/zzn;->zzb:Lcom/google/android/gms/internal/firebase_messaging/zzr;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/firebase_messaging/zzn;->zza:I

    return v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/firebase_messaging/zzr;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_messaging/zzn;->zzb:Lcom/google/android/gms/internal/firebase_messaging/zzr;

    return-object v0
.end method
