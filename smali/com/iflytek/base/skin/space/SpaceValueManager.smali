.class public final Lcom/iflytek/base/skin/space/SpaceValueManager;
.super Ljava/lang/Object;
.source "SpaceValueManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SpaceValueManager"

.field private static mInstance:Lcom/iflytek/base/skin/space/SpaceValueManager;


# instance fields
.field private mHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/iflytek/base/skin/space/SpaceValueManager;->mHashMap:Ljava/util/HashMap;

    .line 29
    new-instance v0, Lcom/iflytek/base/skin/space/SpaceCommonValues;

    invoke-direct {v0}, Lcom/iflytek/base/skin/space/SpaceCommonValues;-><init>()V

    invoke-virtual {p0, v0}, Lcom/iflytek/base/skin/space/SpaceValueManager;->initHashMap(Lcom/iflytek/base/skin/space/SpaceCommonValues;)V

    .line 30
    return-void
.end method

.method public static createSpaceManager()V
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/iflytek/base/skin/space/SpaceValueManager;->mInstance:Lcom/iflytek/base/skin/space/SpaceValueManager;

    if-nez v0, :cond_0

    .line 23
    new-instance v0, Lcom/iflytek/base/skin/space/SpaceValueManager;

    invoke-direct {v0}, Lcom/iflytek/base/skin/space/SpaceValueManager;-><init>()V

    sput-object v0, Lcom/iflytek/base/skin/space/SpaceValueManager;->mInstance:Lcom/iflytek/base/skin/space/SpaceValueManager;

    .line 25
    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/iflytek/base/skin/space/SpaceValueManager;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/iflytek/base/skin/space/SpaceValueManager;->mInstance:Lcom/iflytek/base/skin/space/SpaceValueManager;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lcom/iflytek/base/skin/space/SpaceValueManager;

    invoke-direct {v0}, Lcom/iflytek/base/skin/space/SpaceValueManager;-><init>()V

    sput-object v0, Lcom/iflytek/base/skin/space/SpaceValueManager;->mInstance:Lcom/iflytek/base/skin/space/SpaceValueManager;

    .line 36
    :cond_0
    sget-object v0, Lcom/iflytek/base/skin/space/SpaceValueManager;->mInstance:Lcom/iflytek/base/skin/space/SpaceValueManager;

    return-object v0
.end method


# virtual methods
.method public getValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 52
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_1

    .line 53
    :cond_0
    const-string/jumbo v0, ""

    .line 55
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/iflytek/base/skin/space/SpaceValueManager;->mHashMap:Ljava/util/HashMap;

    const/4 v1, 0x6

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public initHashMap(Lcom/iflytek/base/skin/space/SpaceCommonValues;)V
    .locals 8
    .param p1, "spaceInitValues"    # Lcom/iflytek/base/skin/space/SpaceCommonValues;

    .prologue
    .line 41
    :try_start_0
    const-class v3, Lcom/iflytek/base/skin/space/SpaceCommonValues;

    invoke-virtual {v3}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    .line 42
    .local v2, "keys":[Ljava/lang/reflect/Field;
    array-length v4, v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v2, v3

    .line 43
    .local v1, "item":Ljava/lang/reflect/Field;
    iget-object v5, p0, Lcom/iflytek/base/skin/space/SpaceValueManager;->mHashMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 44
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 43
    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 46
    .end local v1    # "item":Ljava/lang/reflect/Field;
    .end local v2    # "keys":[Ljava/lang/reflect/Field;
    :catch_0
    move-exception v0

    .line 47
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "SpaceValueManager"

    const-string/jumbo v4, "initHashMap()"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 49
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    return-void
.end method
