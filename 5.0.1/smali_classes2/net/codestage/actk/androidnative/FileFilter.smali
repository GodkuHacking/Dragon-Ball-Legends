.class Lnet/codestage/actk/androidnative/FileFilter;
.super Ljava/lang/Object;
.source "FileFilter.java"


# instance fields
.field private caseSensitive:Ljava/lang/Boolean;

.field private exactFileNameMatch:Ljava/lang/Boolean;

.field private exactPathMatch:Ljava/lang/Boolean;

.field private filterExtension:Ljava/lang/String;

.field private filterFileName:Ljava/lang/String;

.field private filterPath:Ljava/lang/String;

.field private pathRecursive:Ljava/lang/Boolean;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_5

    .line 20
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "\\|"

    .line 28
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 35
    array-length v0, p1

    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    .line 37
    sget-object v0, Lnet/codestage/actk/androidnative/NativeUtils;->LogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t parse FileFilter: string split only to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " parts instead of minimum 4 parts!"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 41
    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lnet/codestage/actk/androidnative/FileFilter;->caseSensitive:Ljava/lang/Boolean;

    const/4 v0, 0x1

    .line 42
    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lnet/codestage/actk/androidnative/FileFilter;->pathRecursive:Ljava/lang/Boolean;

    const/4 v0, 0x2

    .line 43
    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lnet/codestage/actk/androidnative/FileFilter;->exactFileNameMatch:Ljava/lang/Boolean;

    const/4 v0, 0x3

    .line 44
    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lnet/codestage/actk/androidnative/FileFilter;->exactPathMatch:Ljava/lang/Boolean;

    .line 46
    array-length v0, p1

    const/4 v2, 0x5

    if-lt v0, v2, :cond_2

    .line 47
    aget-object v0, p1, v1

    iput-object v0, p0, Lnet/codestage/actk/androidnative/FileFilter;->filterPath:Ljava/lang/String;

    .line 49
    :cond_2
    array-length v0, p1

    const/4 v1, 0x6

    if-lt v0, v1, :cond_3

    .line 50
    aget-object v0, p1, v2

    iput-object v0, p0, Lnet/codestage/actk/androidnative/FileFilter;->filterExtension:Ljava/lang/String;

    .line 52
    :cond_3
    array-length v0, p1

    const/4 v2, 0x7

    if-lt v0, v2, :cond_4

    .line 53
    aget-object p1, p1, v1

    iput-object p1, p0, Lnet/codestage/actk/androidnative/FileFilter;->filterFileName:Ljava/lang/String;

    :cond_4
    return-void

    .line 22
    :cond_5
    :goto_0
    sget-object p1, Lnet/codestage/actk/androidnative/NativeUtils;->LogTag:Ljava/lang/String;

    const-string v0, "Can\'t parse FileFilter: string is null or empty!"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static PathMatch(Ljava/lang/String;Ljava/lang/String;ZZ)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    .line 160
    invoke-static {p0, p1}, Lnet/codestage/actk/androidnative/NativeUtils;->ContainsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    return v0

    .line 162
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_4

    return v0

    :cond_1
    if-eqz p3, :cond_2

    .line 167
    sget-object p2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, p2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    sget-object p3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, p3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p2

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p2

    :goto_0
    const/4 p3, -0x1

    if-ne p2, p3, :cond_3

    return v0

    .line 174
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v1, 0x2f

    add-int/2addr p1, p2

    .line 175
    invoke-virtual {p0, v1, p1}, Ljava/lang/String;->indexOf(II)I

    move-result p0

    if-eq p0, p3, :cond_4

    if-le p0, p2, :cond_4

    return v0

    :cond_4
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method MatchPath(Ljava/lang/String;)Z
    .locals 5

    .line 60
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 64
    iget-object p1, p0, Lnet/codestage/actk/androidnative/FileFilter;->filterExtension:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_0
    iget-object p1, p0, Lnet/codestage/actk/androidnative/FileFilter;->filterFileName:Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 65
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    iget-object p1, p0, Lnet/codestage/actk/androidnative/FileFilter;->filterPath:Ljava/lang/String;

    if-eqz p1, :cond_12

    .line 66
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    goto/16 :goto_0

    .line 69
    :cond_2
    iget-object p1, p0, Lnet/codestage/actk/androidnative/FileFilter;->filterExtension:Ljava/lang/String;

    const/4 v2, 0x1

    const-string v3, "."

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_7

    .line 73
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    .line 74
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    return v1

    .line 78
    :cond_3
    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_6

    .line 80
    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v4, v2

    .line 81
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 88
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    return v1

    .line 91
    :cond_4
    iget-object v4, p0, Lnet/codestage/actk/androidnative/FileFilter;->caseSensitive:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lnet/codestage/actk/androidnative/FileFilter;->filterExtension:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    return v1

    .line 93
    :cond_5
    iget-object v4, p0, Lnet/codestage/actk/androidnative/FileFilter;->filterExtension:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_7

    :cond_6
    return v1

    .line 97
    :cond_7
    iget-object p1, p0, Lnet/codestage/actk/androidnative/FileFilter;->filterFileName:Ljava/lang/String;

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_d

    .line 101
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    .line 103
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_8

    return v1

    .line 107
    :cond_8
    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_9

    .line 108
    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 110
    :cond_9
    iget-object v3, p0, Lnet/codestage/actk/androidnative/FileFilter;->exactFileNameMatch:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 112
    iget-object v3, p0, Lnet/codestage/actk/androidnative/FileFilter;->caseSensitive:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v3, p0, Lnet/codestage/actk/androidnative/FileFilter;->filterFileName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    return v1

    .line 114
    :cond_a
    iget-object v3, p0, Lnet/codestage/actk/androidnative/FileFilter;->filterFileName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_d

    return v1

    .line 119
    :cond_b
    iget-object v3, p0, Lnet/codestage/actk/androidnative/FileFilter;->caseSensitive:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_c

    iget-object v3, p0, Lnet/codestage/actk/androidnative/FileFilter;->filterFileName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_c

    return v1

    .line 121
    :cond_c
    iget-object v3, p0, Lnet/codestage/actk/androidnative/FileFilter;->filterFileName:Ljava/lang/String;

    invoke-static {p1, v3}, Lnet/codestage/actk/androidnative/NativeUtils;->ContainsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_d

    return v1

    .line 126
    :cond_d
    iget-object p1, p0, Lnet/codestage/actk/androidnative/FileFilter;->filterPath:Ljava/lang/String;

    if-eqz p1, :cond_11

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_11

    .line 130
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    .line 132
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    return v1

    .line 135
    :cond_e
    iget-object v0, p0, Lnet/codestage/actk/androidnative/FileFilter;->exactPathMatch:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 137
    iget-object v0, p0, Lnet/codestage/actk/androidnative/FileFilter;->caseSensitive:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lnet/codestage/actk/androidnative/FileFilter;->filterPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    return v1

    .line 139
    :cond_f
    iget-object v0, p0, Lnet/codestage/actk/androidnative/FileFilter;->filterPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_11

    return v1

    .line 146
    :cond_10
    iget-object v0, p0, Lnet/codestage/actk/androidnative/FileFilter;->filterPath:Ljava/lang/String;

    iget-object v3, p0, Lnet/codestage/actk/androidnative/FileFilter;->pathRecursive:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iget-object v4, p0, Lnet/codestage/actk/androidnative/FileFilter;->caseSensitive:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    xor-int/2addr v4, v2

    invoke-static {p1, v0, v3, v4}, Lnet/codestage/actk/androidnative/FileFilter;->PathMatch(Ljava/lang/String;Ljava/lang/String;ZZ)Z

    move-result p1

    if-nez p1, :cond_11

    return v1

    :cond_11
    return v2

    :cond_12
    :goto_0
    return v1
.end method

.method ToString()Ljava/lang/String;
    .locals 2

    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "caseSensitive: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/codestage/actk/androidnative/FileFilter;->caseSensitive:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", pathRecursive: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/codestage/actk/androidnative/FileFilter;->pathRecursive:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", exactFileNameMatch: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/codestage/actk/androidnative/FileFilter;->exactFileNameMatch:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", exactPathMatch: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/codestage/actk/androidnative/FileFilter;->exactPathMatch:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", filterPath: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/codestage/actk/androidnative/FileFilter;->filterPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", filterExtension: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/codestage/actk/androidnative/FileFilter;->filterExtension:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", filterFileName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/codestage/actk/androidnative/FileFilter;->filterFileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
