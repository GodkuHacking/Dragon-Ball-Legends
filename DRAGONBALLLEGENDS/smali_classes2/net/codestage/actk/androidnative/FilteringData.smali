.class Lnet/codestage/actk/androidnative/FilteringData;
.super Ljava/lang/Object;
.source "FilteringData.java"


# instance fields
.field private final ignores:[Lnet/codestage/actk/androidnative/FileFilter;

.field private final includes:[Lnet/codestage/actk/androidnative/FileFilter;


# direct methods
.method public constructor <init>([Lnet/codestage/actk/androidnative/FileFilter;[Lnet/codestage/actk/androidnative/FileFilter;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lnet/codestage/actk/androidnative/FilteringData;->includes:[Lnet/codestage/actk/androidnative/FileFilter;

    .line 58
    iput-object p2, p0, Lnet/codestage/actk/androidnative/FilteringData;->ignores:[Lnet/codestage/actk/androidnative/FileFilter;

    return-void
.end method

.method public static CreateFromFilters([Ljava/lang/String;)Lnet/codestage/actk/androidnative/FilteringData;
    .locals 7

    if-nez p0, :cond_0

    .line 13
    new-instance p0, Lnet/codestage/actk/androidnative/FilteringData;

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lnet/codestage/actk/androidnative/FilteringData;-><init>([Lnet/codestage/actk/androidnative/FileFilter;[Lnet/codestage/actk/androidnative/FileFilter;)V

    return-object p0

    .line 15
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 20
    array-length v2, p0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v5, p0, v3

    const-string v6, "IGNORES"

    .line 22
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    if-eqz v4, :cond_2

    .line 29
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 31
    :cond_2
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 34
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    invoke-static {p0}, Lnet/codestage/actk/androidnative/FilteringData;->GetFiltersFromStrings([Ljava/lang/String;)[Lnet/codestage/actk/androidnative/FileFilter;

    move-result-object p0

    .line 35
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-static {v0}, Lnet/codestage/actk/androidnative/FilteringData;->GetFiltersFromStrings([Ljava/lang/String;)[Lnet/codestage/actk/androidnative/FileFilter;

    move-result-object v0

    .line 37
    new-instance v1, Lnet/codestage/actk/androidnative/FilteringData;

    invoke-direct {v1, p0, v0}, Lnet/codestage/actk/androidnative/FilteringData;-><init>([Lnet/codestage/actk/androidnative/FileFilter;[Lnet/codestage/actk/androidnative/FileFilter;)V

    return-object v1
.end method

.method private static GetFiltersFromStrings([Ljava/lang/String;)[Lnet/codestage/actk/androidnative/FileFilter;
    .locals 4

    if-eqz p0, :cond_2

    .line 42
    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_1

    .line 45
    :cond_0
    array-length v0, p0

    new-array v0, v0, [Lnet/codestage/actk/androidnative/FileFilter;

    const/4 v1, 0x0

    .line 46
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 48
    aget-object v2, p0, v1

    .line 49
    new-instance v3, Lnet/codestage/actk/androidnative/FileFilter;

    invoke-direct {v3, v2}, Lnet/codestage/actk/androidnative/FileFilter;-><init>(Ljava/lang/String;)V

    aput-object v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private IsPathMatchesFilters(Ljava/lang/String;[Lnet/codestage/actk/androidnative/FileFilter;)Z
    .locals 4

    .line 79
    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p2, v2

    .line 81
    invoke-virtual {v3, p1}, Lnet/codestage/actk/androidnative/FileFilter;->MatchPath(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method


# virtual methods
.method public IsIgnored(Ljava/lang/String;)Z
    .locals 2

    .line 71
    iget-object v0, p0, Lnet/codestage/actk/androidnative/FilteringData;->ignores:[Lnet/codestage/actk/androidnative/FileFilter;

    if-eqz v0, :cond_1

    array-length v1, v0

    if-nez v1, :cond_0

    goto :goto_0

    .line 74
    :cond_0
    invoke-direct {p0, p1, v0}, Lnet/codestage/actk/androidnative/FilteringData;->IsPathMatchesFilters(Ljava/lang/String;[Lnet/codestage/actk/androidnative/FileFilter;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public IsIncluded(Ljava/lang/String;)Z
    .locals 2

    .line 63
    iget-object v0, p0, Lnet/codestage/actk/androidnative/FilteringData;->includes:[Lnet/codestage/actk/androidnative/FileFilter;

    if-eqz v0, :cond_1

    array-length v1, v0

    if-nez v1, :cond_0

    goto :goto_0

    .line 66
    :cond_0
    invoke-direct {p0, p1, v0}, Lnet/codestage/actk/androidnative/FilteringData;->IsPathMatchesFilters(Ljava/lang/String;[Lnet/codestage/actk/androidnative/FileFilter;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
