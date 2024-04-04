.class public final synthetic Lcom/google/firebase/crashlytics/internal/metadata/UserMetadata$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lcom/google/firebase/crashlytics/internal/metadata/UserMetadata;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/crashlytics/internal/metadata/UserMetadata;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/metadata/UserMetadata$$ExternalSyntheticLambda0;->f$0:Lcom/google/firebase/crashlytics/internal/metadata/UserMetadata;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/metadata/UserMetadata$$ExternalSyntheticLambda0;->f$0:Lcom/google/firebase/crashlytics/internal/metadata/UserMetadata;

    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/internal/metadata/UserMetadata;->lambda$setUserId$0$com-google-firebase-crashlytics-internal-metadata-UserMetadata()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
