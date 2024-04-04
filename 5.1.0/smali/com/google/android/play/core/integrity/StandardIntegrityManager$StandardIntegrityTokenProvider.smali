.class public interface abstract Lcom/google/android/play/core/integrity/StandardIntegrityManager$StandardIntegrityTokenProvider;
.super Ljava/lang/Object;
.source "com.google.android.play:integrity@@1.1.0-beta01"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/play/core/integrity/StandardIntegrityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "StandardIntegrityTokenProvider"
.end annotation


# virtual methods
.method public abstract request(Lcom/google/android/play/core/integrity/StandardIntegrityManager$StandardIntegrityTokenRequest;)Lcom/google/android/gms/tasks/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/play/core/integrity/StandardIntegrityManager$StandardIntegrityTokenRequest;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/play/core/integrity/StandardIntegrityManager$StandardIntegrityToken;",
            ">;"
        }
    .end annotation
.end method
