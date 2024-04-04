.class public final synthetic Lcom/google/android/play/core/integrity/bb;
.super Ljava/lang/Object;
.source "com.google.android.play:integrity@@1.1.0-beta01"

# interfaces
.implements Lcom/google/android/play/core/integrity/StandardIntegrityManager$StandardIntegrityTokenProvider;


# instance fields
.field public final synthetic a:Lcom/google/android/play/core/integrity/bc;

.field public final synthetic b:J

.field public final synthetic c:J


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/play/core/integrity/bc;JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/integrity/bb;->a:Lcom/google/android/play/core/integrity/bc;

    iput-wide p2, p0, Lcom/google/android/play/core/integrity/bb;->b:J

    iput-wide p4, p0, Lcom/google/android/play/core/integrity/bb;->c:J

    return-void
.end method


# virtual methods
.method public final request(Lcom/google/android/play/core/integrity/StandardIntegrityManager$StandardIntegrityTokenRequest;)Lcom/google/android/gms/tasks/Task;
    .locals 6

    iget-object v0, p0, Lcom/google/android/play/core/integrity/bb;->a:Lcom/google/android/play/core/integrity/bc;

    iget-wide v1, p0, Lcom/google/android/play/core/integrity/bb;->b:J

    iget-wide v3, p0, Lcom/google/android/play/core/integrity/bb;->c:J

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/play/core/integrity/bc;->a(JJLcom/google/android/play/core/integrity/StandardIntegrityManager$StandardIntegrityTokenRequest;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method
