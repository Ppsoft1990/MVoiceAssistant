.class public Lcom/iflytek/greenplug/common/utils/reflect/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field public static final EMPTY_CLASS_ARRAY:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field static final EMPTY_OBJECT_ARRAY:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 13
    new-array v0, v1, [Ljava/lang/Object;

    sput-object v0, Lcom/iflytek/greenplug/common/utils/reflect/Utils;->EMPTY_OBJECT_ARRAY:[Ljava/lang/Object;

    .line 15
    new-array v0, v1, [Ljava/lang/Class;

    sput-object v0, Lcom/iflytek/greenplug/common/utils/reflect/Utils;->EMPTY_CLASS_ARRAY:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAllInterfaces(Ljava/lang/Class;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 54
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez p0, :cond_0

    .line 55
    const/4 v1, 0x0

    .line 59
    :goto_0
    return-object v1

    .line 57
    :cond_0
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 58
    .local v0, "interfacesFound":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/lang/Class<*>;>;"
    invoke-static {p0, v0}, Lcom/iflytek/greenplug/common/utils/reflect/Utils;->getAllInterfaces(Ljava/lang/Class;Ljava/util/HashSet;)V

    .line 59
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0
.end method

.method private static getAllInterfaces(Ljava/lang/Class;Ljava/util/HashSet;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Class",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .line 63
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "interfacesFound":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Class<*>;>;"
    :goto_0
    if-eqz p0, :cond_2

    .line 64
    invoke-virtual {p0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v1

    .line 66
    .local v1, "interfaces":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v3, v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_1

    aget-object v0, v1, v2

    .line 67
    .local v0, "i":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 68
    invoke-static {v0, p1}, Lcom/iflytek/greenplug/common/utils/reflect/Utils;->getAllInterfaces(Ljava/lang/Class;Ljava/util/HashSet;)V

    .line 66
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 72
    .end local v0    # "i":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    .line 73
    goto :goto_0

    .line 74
    .end local v1    # "interfaces":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_2
    return-void
.end method

.method public static isSameLength([Ljava/lang/Object;[Ljava/lang/Object;)Z
    .locals 2
    .param p0, "array1"    # [Ljava/lang/Object;
    .param p1, "array2"    # [Ljava/lang/Object;

    .prologue
    .line 18
    if-nez p0, :cond_0

    if-eqz p1, :cond_0

    array-length v0, p1

    if-gtz v0, :cond_2

    :cond_0
    if-nez p1, :cond_1

    if-eqz p0, :cond_1

    array-length v0, p0

    if-gtz v0, :cond_2

    :cond_1
    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    array-length v0, p0

    array-length v1, p1

    if-eq v0, v1, :cond_3

    .line 21
    :cond_2
    const/4 v0, 0x0

    .line 23
    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static nullToEmpty([Ljava/lang/Class;)[Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;)[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 40
    .local p0, "array":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    .line 41
    :cond_0
    sget-object p0, Lcom/iflytek/greenplug/common/utils/reflect/Utils;->EMPTY_CLASS_ARRAY:[Ljava/lang/Class;

    .line 43
    .end local p0    # "array":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_1
    return-object p0
.end method

.method static nullToEmpty([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .param p0, "array"    # [Ljava/lang/Object;

    .prologue
    .line 47
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    .line 48
    :cond_0
    sget-object p0, Lcom/iflytek/greenplug/common/utils/reflect/Utils;->EMPTY_OBJECT_ARRAY:[Ljava/lang/Object;

    .line 50
    .end local p0    # "array":[Ljava/lang/Object;
    :cond_1
    return-object p0
.end method

.method static varargs toClass([Ljava/lang/Object;)[Ljava/lang/Class;
    .locals 4
    .param p0, "array"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 27
    if-nez p0, :cond_0

    .line 36
    :goto_0
    return-object v3

    .line 29
    :cond_0
    array-length v2, p0

    if-nez v2, :cond_1

    .line 30
    sget-object v3, Lcom/iflytek/greenplug/common/utils/reflect/Utils;->EMPTY_CLASS_ARRAY:[Ljava/lang/Class;

    goto :goto_0

    .line 32
    :cond_1
    array-length v2, p0

    new-array v0, v2, [Ljava/lang/Class;

    .line 33
    .local v0, "classes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v2, p0

    if-ge v1, v2, :cond_3

    .line 34
    aget-object v2, p0, v1

    if-nez v2, :cond_2

    move-object v2, v3

    :goto_2
    aput-object v2, v0, v1

    .line 33
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 34
    :cond_2
    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    goto :goto_2

    :cond_3
    move-object v3, v0

    .line 36
    goto :goto_0
.end method
