.class public final synthetic Lnet/codestage/actk/androidnative/CodeHashGenerator$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Ljava/util/jar/JarFile;

.field public final synthetic f$1:Ljava/util/jar/JarEntry;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/codestage/actk/androidnative/CodeHashGenerator$$ExternalSyntheticLambda2;->f$0:Ljava/util/jar/JarFile;

    iput-object p2, p0, Lnet/codestage/actk/androidnative/CodeHashGenerator$$ExternalSyntheticLambda2;->f$1:Ljava/util/jar/JarEntry;

    iput-object p3, p0, Lnet/codestage/actk/androidnative/CodeHashGenerator$$ExternalSyntheticLambda2;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lnet/codestage/actk/androidnative/CodeHashGenerator$$ExternalSyntheticLambda2;->f$0:Ljava/util/jar/JarFile;

    iget-object v1, p0, Lnet/codestage/actk/androidnative/CodeHashGenerator$$ExternalSyntheticLambda2;->f$1:Ljava/util/jar/JarEntry;

    iget-object v2, p0, Lnet/codestage/actk/androidnative/CodeHashGenerator$$ExternalSyntheticLambda2;->f$2:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lnet/codestage/actk/androidnative/CodeHashGenerator;->lambda$HashFiles$3(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
