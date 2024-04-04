.class public final Lcom/google/android/play/integrity/internal/ae;
.super Ljava/lang/Object;
.source "com.google.android.play:integrity@@1.1.0-beta01"


# direct methods
.method public static a(Landroid/content/Context;)Landroid/content/Context;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    return-object p0
.end method
