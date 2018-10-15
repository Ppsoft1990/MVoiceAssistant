.class public Lcom/iflytek/greenplug/common/utils/compat/CompatibilityInfoCompat;
.super Ljava/lang/Object;
.source "CompatibilityInfoCompat.java"


# static fields
.field private static sClass:Ljava/lang/Class;

.field private static sDefaultCompatibilityInfo:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static DEFAULT_COMPATIBILITY_INFO()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 23
    sget-object v0, Lcom/iflytek/greenplug/common/utils/compat/CompatibilityInfoCompat;->sDefaultCompatibilityInfo:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 24
    invoke-static {}, Lcom/iflytek/greenplug/common/utils/compat/CompatibilityInfoCompat;->getMyClass()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "DEFAULT_COMPATIBILITY_INFO"

    invoke-static {v0, v1}, Lcom/iflytek/greenplug/common/utils/reflect/FieldUtils;->readStaticField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lcom/iflytek/greenplug/common/utils/compat/CompatibilityInfoCompat;->sDefaultCompatibilityInfo:Ljava/lang/Object;

    .line 26
    :cond_0
    sget-object v0, Lcom/iflytek/greenplug/common/utils/compat/CompatibilityInfoCompat;->sDefaultCompatibilityInfo:Ljava/lang/Object;

    return-object v0
.end method

.method private static getMyClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 14
    sget-object v0, Lcom/iflytek/greenplug/common/utils/compat/CompatibilityInfoCompat;->sClass:Ljava/lang/Class;

    if-nez v0, :cond_0

    .line 15
    const-string/jumbo v0, "android.content.res.CompatibilityInfo"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/iflytek/greenplug/common/utils/compat/CompatibilityInfoCompat;->sClass:Ljava/lang/Class;

    .line 17
    :cond_0
    sget-object v0, Lcom/iflytek/greenplug/common/utils/compat/CompatibilityInfoCompat;->sClass:Ljava/lang/Class;

    return-object v0
.end method
