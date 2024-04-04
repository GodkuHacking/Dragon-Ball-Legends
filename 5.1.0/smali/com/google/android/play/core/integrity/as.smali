.class public final Lcom/google/android/play/core/integrity/as;
.super Ljava/lang/Object;
.source "com.google.android.play:integrity@@1.1.0-beta01"

# interfaces
.implements Lcom/google/android/play/integrity/internal/ai;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/play/integrity/internal/q;

    const-string v1, "StandardIntegrity"

    invoke-direct {v0, v1}, Lcom/google/android/play/integrity/internal/q;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
