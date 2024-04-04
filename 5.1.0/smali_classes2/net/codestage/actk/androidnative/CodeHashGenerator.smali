.class public Lnet/codestage/actk/androidnative/CodeHashGenerator;
.super Ljava/lang/Object;
.source "CodeHashGenerator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/codestage/actk/androidnative/CodeHashGenerator$HashCalculationResult;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GetArrayHash(Ljava/util/List;)Ljava/lang/String;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, ""

    if-nez p0, :cond_0

    return-object v0

    .line 310
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    const/4 v0, 0x0

    .line 314
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    .line 316
    new-array v3, v1, [[B

    move v4, v0

    :goto_0
    if-ge v4, v1, :cond_3

    .line 319
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x13

    if-lt v5, v6, :cond_2

    .line 320
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    aput-object v5, v3, v4

    goto :goto_1

    .line 322
    :cond_2
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "UTF-8"

    invoke-static {v6}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    aput-object v5, v3, v4

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 325
    :cond_3
    div-int/lit8 p0, v2, 0x2

    new-array v4, p0, [B

    move v5, v0

    :goto_2
    if-ge v5, v2, :cond_5

    move v6, v0

    move v7, v6

    :goto_3
    if-ge v6, v1, :cond_4

    .line 331
    aget-object v8, v3, v6

    aget-byte v8, v8, v5

    .line 332
    aget-object v9, v3, v6

    add-int/lit8 v10, v5, 0x1

    aget-byte v9, v9, v10

    shl-int/lit8 v8, v8, 0x4

    or-int/2addr v8, v9

    int-to-byte v8, v8

    xor-int/2addr v7, v8

    int-to-byte v7, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 335
    :cond_4
    div-int/lit8 v6, v5, 0x2

    aput-byte v7, v4, v6

    add-int/lit8 v5, v5, 0x2

    goto :goto_2

    .line 338
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move v3, v0

    :goto_4
    if-ge v3, p0, :cond_6

    .line 339
    aget-byte v5, v4, v3

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    .line 341
    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v6, v0

    const-string v5, "%02x"

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 344
    :cond_6
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static GetCodeHash([Ljava/lang/String;Lnet/codestage/actk/androidnative/CodeHashCallback;I)V
    .locals 4

    .line 44
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 45
    new-instance v1, Ljava/util/concurrent/ExecutorCompletionService;

    invoke-direct {v1, v0}, Ljava/util/concurrent/ExecutorCompletionService;-><init>(Ljava/util/concurrent/Executor;)V

    .line 46
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 48
    new-instance v3, Lnet/codestage/actk/androidnative/CodeHashGenerator$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0, p2}, Lnet/codestage/actk/androidnative/CodeHashGenerator$$ExternalSyntheticLambda3;-><init>([Ljava/lang/String;I)V

    invoke-interface {v1, v3}, Ljava/util/concurrent/CompletionService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 67
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 69
    new-instance p0, Ljava/lang/Thread;

    new-instance p2, Lnet/codestage/actk/androidnative/CodeHashGenerator$$ExternalSyntheticLambda0;

    invoke-direct {p2, v1, v2, p1}, Lnet/codestage/actk/androidnative/CodeHashGenerator$$ExternalSyntheticLambda0;-><init>(Ljava/util/concurrent/CompletionService;Landroid/os/Handler;Lnet/codestage/actk/androidnative/CodeHashCallback;)V

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 87
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private static GetCodeHashThread(Lnet/codestage/actk/androidnative/FilteringData;I)Lnet/codestage/actk/androidnative/CodeHashGenerator$HashCalculationResult;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Landroid/content/pm/PackageManager$NameNotFoundException;,
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 92
    new-instance v0, Lnet/codestage/actk/androidnative/CodeHashGenerator$HashCalculationResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lnet/codestage/actk/androidnative/CodeHashGenerator$HashCalculationResult;-><init>(Lnet/codestage/actk/androidnative/CodeHashGenerator$1;)V

    .line 96
    invoke-static {}, Lnet/codestage/actk/androidnative/NativeUtils;->GetApkPath()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string p0, "[CodeHashGenerator ERROR] Can\'t get APK path!"

    .line 100
    iput-object p0, v0, Lnet/codestage/actk/androidnative/CodeHashGenerator$HashCalculationResult;->errorText:Ljava/lang/String;

    .line 101
    sget-object p0, Lnet/codestage/actk/androidnative/NativeUtils;->LogTag:Ljava/lang/String;

    iget-object p1, v0, Lnet/codestage/actk/androidnative/CodeHashGenerator$HashCalculationResult;->errorText:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 105
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 107
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 108
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 110
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "[CodeHashGenerator ERROR] Can\'t create file for APK path: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lnet/codestage/actk/androidnative/ACTkErrors;->GetText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lnet/codestage/actk/androidnative/CodeHashGenerator$HashCalculationResult;->errorText:Ljava/lang/String;

    .line 111
    sget-object p0, Lnet/codestage/actk/androidnative/NativeUtils;->LogTag:Ljava/lang/String;

    iget-object p1, v0, Lnet/codestage/actk/androidnative/CodeHashGenerator$HashCalculationResult;->errorText:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 115
    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    const/4 v4, 0x0

    if-nez v3, :cond_2

    .line 118
    sget-object v3, Lnet/codestage/actk/androidnative/NativeUtils;->LogTag:Ljava/lang/String;

    const-string v5, "[CodeHashGenerator ERROR] Can\'t find parent folder of APK file at path: "

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 123
    :cond_2
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 124
    array-length v5, v3

    if-nez v5, :cond_3

    goto :goto_2

    .line 131
    :cond_3
    array-length v5, v3

    move v6, v4

    :goto_0
    if-ge v6, v5, :cond_7

    aget-object v7, v3, v6

    .line 133
    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    .line 136
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 138
    sget-object v7, Lnet/codestage/actk/androidnative/NativeUtils;->LogTag:Ljava/lang/String;

    const-string v8, "[CodeHashGenerator ERROR] Can\'t get path for file in APK folder!"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 142
    :cond_4
    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    const-string v9, ".apk"

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_5

    goto :goto_1

    .line 144
    :cond_5
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 126
    :cond_6
    :goto_2
    sget-object v3, Lnet/codestage/actk/androidnative/NativeUtils;->LogTag:Ljava/lang/String;

    const-string v5, "[CodeHashGenerator ERROR] Can\'t get any files in APK folder at path: "

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    :cond_7
    :goto_3
    iput-object v1, v0, Lnet/codestage/actk/androidnative/CodeHashGenerator$HashCalculationResult;->buildPath:Ljava/lang/String;

    .line 151
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 152
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 154
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 157
    invoke-static {v6}, Lnet/codestage/actk/androidnative/CodeHashGenerator;->GetJarFromApk(Ljava/lang/String;)Ljava/util/jar/JarFile;

    move-result-object v7

    if-nez v7, :cond_8

    .line 160
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "[CodeHashGenerator ERROR] Can\'t read APK with path: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lnet/codestage/actk/androidnative/ACTkErrors;->GetText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lnet/codestage/actk/androidnative/CodeHashGenerator$HashCalculationResult;->errorText:Ljava/lang/String;

    .line 161
    sget-object p0, Lnet/codestage/actk/androidnative/NativeUtils;->LogTag:Ljava/lang/String;

    iget-object p1, v0, Lnet/codestage/actk/androidnative/CodeHashGenerator$HashCalculationResult;->errorText:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 165
    :cond_8
    invoke-static {v7, p0, v3, v5, p1}, Lnet/codestage/actk/androidnative/CodeHashGenerator;->HashFiles(Ljava/util/jar/JarFile;Lnet/codestage/actk/androidnative/FilteringData;Ljava/util/List;Ljava/util/List;I)V

    goto :goto_4

    .line 168
    :cond_9
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result p0

    if-nez p0, :cond_a

    const-string p0, "[CodeHashGenerator ERROR] Nothing to hash!"

    .line 170
    invoke-static {p0}, Lnet/codestage/actk/androidnative/ACTkErrors;->GetText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lnet/codestage/actk/androidnative/CodeHashGenerator$HashCalculationResult;->errorText:Ljava/lang/String;

    .line 171
    sget-object p0, Lnet/codestage/actk/androidnative/NativeUtils;->LogTag:Ljava/lang/String;

    iget-object p1, v0, Lnet/codestage/actk/androidnative/CodeHashGenerator$HashCalculationResult;->errorText:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 175
    :cond_a
    iput-object v1, v0, Lnet/codestage/actk/androidnative/CodeHashGenerator$HashCalculationResult;->buildPath:Ljava/lang/String;

    new-array p0, v4, [Ljava/lang/String;

    .line 176
    invoke-interface {v5, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    iput-object p0, v0, Lnet/codestage/actk/androidnative/CodeHashGenerator$HashCalculationResult;->hashes:[Ljava/lang/String;

    new-array p0, v4, [Ljava/lang/String;

    .line 177
    invoke-interface {v3, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    iput-object p0, v0, Lnet/codestage/actk/androidnative/CodeHashGenerator$HashCalculationResult;->paths:[Ljava/lang/String;

    .line 178
    invoke-static {v5}, Lnet/codestage/actk/androidnative/CodeHashGenerator;->GetArrayHash(Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lnet/codestage/actk/androidnative/CodeHashGenerator$HashCalculationResult;->summaryHash:Ljava/lang/String;

    return-object v0
.end method

.method private static GetJarFromApk(Ljava/lang/String;)Ljava/util/jar/JarFile;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 198
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 199
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    new-instance v0, Ljava/util/jar/JarFile;

    invoke-direct {v0, p0}, Ljava/util/jar/JarFile;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static HashFiles(Ljava/util/jar/JarFile;Lnet/codestage/actk/androidnative/FilteringData;Ljava/util/List;Ljava/util/List;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/jar/JarFile;",
            "Lnet/codestage/actk/androidnative/FilteringData;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 207
    invoke-static {p4}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object p4

    .line 208
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 210
    invoke-virtual {p0}, Ljava/util/jar/JarFile;->entries()Ljava/util/Enumeration;

    move-result-object v1

    if-nez v1, :cond_0

    .line 213
    sget-object p0, Lnet/codestage/actk/androidnative/NativeUtils;->LogTag:Ljava/lang/String;

    const-string p1, "[CodeHashGenerator ERROR] Nothing found in APK JAR!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 217
    :cond_0
    invoke-static {v1}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v1

    .line 218
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/jar/JarEntry;

    if-nez v2, :cond_1

    .line 222
    sget-object v2, Lnet/codestage/actk/androidnative/NativeUtils;->LogTag:Ljava/lang/String;

    const-string v3, "[CodeHashGenerator ERROR] Some JAR entry is null!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 226
    :cond_1
    invoke-virtual {v2}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    .line 229
    sget-object v2, Lnet/codestage/actk/androidnative/NativeUtils;->LogTag:Ljava/lang/String;

    const-string v3, "[CodeHashGenerator ERROR] Some JAR entry has null path!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 233
    :cond_2
    invoke-virtual {p1, v3}, Lnet/codestage/actk/androidnative/FilteringData;->IsIgnored(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_0

    .line 236
    :cond_3
    invoke-virtual {p1, v3}, Lnet/codestage/actk/androidnative/FilteringData;->IsIncluded(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_0

    .line 239
    :cond_4
    new-instance v4, Lnet/codestage/actk/androidnative/CodeHashGenerator$$ExternalSyntheticLambda2;

    invoke-direct {v4, p0, v2, v3}, Lnet/codestage/actk/androidnative/CodeHashGenerator$$ExternalSyntheticLambda2;-><init>(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;Ljava/lang/String;)V

    invoke-interface {p4, v4}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 273
    :cond_5
    invoke-interface {p4}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    const-wide/16 p0, 0x1

    .line 277
    :try_start_0
    sget-object v1, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p4, p0, p1, v1}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result p0

    if-nez p0, :cond_6

    .line 278
    sget-object p0, Lnet/codestage/actk/androidnative/NativeUtils;->LogTag:Ljava/lang/String;

    const-string p1, "Not all tasks completed within the specified timeout"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2

    .line 286
    :cond_6
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_7
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/Future;

    .line 290
    :try_start_1
    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_7

    const-string p4, "path"

    .line 293
    invoke-interface {p1, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    invoke-interface {p2, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p4, "hash"

    .line 294
    invoke-interface {p1, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 299
    :goto_2
    sget-object p4, Lnet/codestage/actk/androidnative/NativeUtils;->LogTag:Ljava/lang/String;

    const-string v0, "Error while processing file"

    invoke-static {p4, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_8
    return-void

    .line 282
    :catch_2
    sget-object p0, Lnet/codestage/actk/androidnative/NativeUtils;->LogTag:Ljava/lang/String;

    const-string p1, "Interrupted while waiting for tasks to complete"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic lambda$GetCodeHash$0([Ljava/lang/String;I)Lnet/codestage/actk/androidnative/CodeHashGenerator$HashCalculationResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 54
    :try_start_0
    invoke-static {p0}, Lnet/codestage/actk/androidnative/FilteringData;->CreateFromFilters([Ljava/lang/String;)Lnet/codestage/actk/androidnative/FilteringData;

    move-result-object p0

    .line 55
    invoke-static {p0, p1}, Lnet/codestage/actk/androidnative/CodeHashGenerator;->GetCodeHashThread(Lnet/codestage/actk/androidnative/FilteringData;I)Lnet/codestage/actk/androidnative/CodeHashGenerator$HashCalculationResult;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 59
    new-instance p1, Lnet/codestage/actk/androidnative/CodeHashGenerator$HashCalculationResult;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lnet/codestage/actk/androidnative/CodeHashGenerator$HashCalculationResult;-><init>(Lnet/codestage/actk/androidnative/CodeHashGenerator$1;)V

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Something went wrong while trying to hash current APK: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/codestage/actk/androidnative/ACTkErrors;->GetText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lnet/codestage/actk/androidnative/CodeHashGenerator$HashCalculationResult;->errorText:Ljava/lang/String;

    .line 61
    sget-object v0, Lnet/codestage/actk/androidnative/NativeUtils;->LogTag:Ljava/lang/String;

    iget-object v1, p1, Lnet/codestage/actk/androidnative/CodeHashGenerator$HashCalculationResult;->errorText:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object p0, p1

    :goto_0
    return-object p0
.end method

.method static synthetic lambda$GetCodeHash$1(Lnet/codestage/actk/androidnative/CodeHashGenerator$HashCalculationResult;Lnet/codestage/actk/androidnative/CodeHashCallback;)V
    .locals 3

    .line 77
    iget-object v0, p0, Lnet/codestage/actk/androidnative/CodeHashGenerator$HashCalculationResult;->errorText:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 78
    iget-object p0, p0, Lnet/codestage/actk/androidnative/CodeHashGenerator$HashCalculationResult;->errorText:Ljava/lang/String;

    invoke-interface {p1, p0}, Lnet/codestage/actk/androidnative/CodeHashCallback;->OnError(Ljava/lang/String;)V

    goto :goto_0

    .line 80
    :cond_0
    iget-object v0, p0, Lnet/codestage/actk/androidnative/CodeHashGenerator$HashCalculationResult;->buildPath:Ljava/lang/String;

    iget-object v1, p0, Lnet/codestage/actk/androidnative/CodeHashGenerator$HashCalculationResult;->paths:[Ljava/lang/String;

    iget-object v2, p0, Lnet/codestage/actk/androidnative/CodeHashGenerator$HashCalculationResult;->hashes:[Ljava/lang/String;

    iget-object p0, p0, Lnet/codestage/actk/androidnative/CodeHashGenerator$HashCalculationResult;->summaryHash:Ljava/lang/String;

    invoke-interface {p1, v0, v1, v2, p0}, Lnet/codestage/actk/androidnative/CodeHashCallback;->OnSuccess(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method static synthetic lambda$GetCodeHash$2(Ljava/util/concurrent/CompletionService;Landroid/os/Handler;Lnet/codestage/actk/androidnative/CodeHashCallback;)V
    .locals 1

    .line 73
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/CompletionService;->take()Ljava/util/concurrent/Future;

    move-result-object p0

    .line 74
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/codestage/actk/androidnative/CodeHashGenerator$HashCalculationResult;

    .line 75
    new-instance v0, Lnet/codestage/actk/androidnative/CodeHashGenerator$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p2}, Lnet/codestage/actk/androidnative/CodeHashGenerator$$ExternalSyntheticLambda1;-><init>(Lnet/codestage/actk/androidnative/CodeHashGenerator$HashCalculationResult;Lnet/codestage/actk/androidnative/CodeHashCallback;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    .line 85
    :goto_0
    sget-object p1, Lnet/codestage/actk/androidnative/NativeUtils;->LogTag:Ljava/lang/String;

    const-string p2, "Not all tasks completed within the specified timeout!"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method static synthetic lambda$HashFiles$3(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;Ljava/lang/String;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "SHA-1"

    .line 241
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    const/16 v1, 0x2000

    new-array v1, v1, [B

    .line 243
    invoke-virtual {p0, p1}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object p0

    if-nez p0, :cond_0

    .line 247
    sget-object p0, Lnet/codestage/actk/androidnative/NativeUtils;->LogTag:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[CodeHashGenerator ERROR] JAR has null input stream for entry with path: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 p1, 0x0

    move v2, p1

    :cond_1
    :goto_0
    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 254
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-lez v2, :cond_1

    .line 256
    invoke-virtual {v0, v1, p1, v2}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_0

    .line 259
    :cond_2
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p1

    .line 260
    invoke-static {p1}, Lnet/codestage/actk/androidnative/NativeUtils;->BytesToHex([B)Ljava/lang/String;

    move-result-object p1

    .line 262
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "path"

    .line 263
    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "hash"

    .line 264
    invoke-interface {v1, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    .line 267
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    return-object v1
.end method
