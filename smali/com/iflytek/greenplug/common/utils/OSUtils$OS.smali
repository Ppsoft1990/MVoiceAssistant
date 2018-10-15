.class public final enum Lcom/iflytek/greenplug/common/utils/OSUtils$OS;
.super Ljava/lang/Enum;
.source "OSUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/greenplug/common/utils/OSUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OS"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/iflytek/greenplug/common/utils/OSUtils$OS;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iflytek/greenplug/common/utils/OSUtils$OS;

.field public static final enum EMUI:Lcom/iflytek/greenplug/common/utils/OSUtils$OS;

.field public static final enum FLYME:Lcom/iflytek/greenplug/common/utils/OSUtils$OS;

.field public static final enum MIUI:Lcom/iflytek/greenplug/common/utils/OSUtils$OS;

.field public static final enum SAMSUNG_OS:Lcom/iflytek/greenplug/common/utils/OSUtils$OS;

.field public static final enum SMARTISAN_OS:Lcom/iflytek/greenplug/common/utils/OSUtils$OS;

.field public static final enum UNKNOWN:Lcom/iflytek/greenplug/common/utils/OSUtils$OS;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 11
    new-instance v0, Lcom/iflytek/greenplug/common/utils/OSUtils$OS;

    const-string/jumbo v1, "EMUI"

    invoke-direct {v0, v1, v3}, Lcom/iflytek/greenplug/common/utils/OSUtils$OS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/greenplug/common/utils/OSUtils$OS;->EMUI:Lcom/iflytek/greenplug/common/utils/OSUtils$OS;

    .line 13
    new-instance v0, Lcom/iflytek/greenplug/common/utils/OSUtils$OS;

    const-string/jumbo v1, "FLYME"

    invoke-direct {v0, v1, v4}, Lcom/iflytek/greenplug/common/utils/OSUtils$OS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/greenplug/common/utils/OSUtils$OS;->FLYME:Lcom/iflytek/greenplug/common/utils/OSUtils$OS;

    .line 15
    new-instance v0, Lcom/iflytek/greenplug/common/utils/OSUtils$OS;

    const-string/jumbo v1, "MIUI"

    invoke-direct {v0, v1, v5}, Lcom/iflytek/greenplug/common/utils/OSUtils$OS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/greenplug/common/utils/OSUtils$OS;->MIUI:Lcom/iflytek/greenplug/common/utils/OSUtils$OS;

    .line 17
    new-instance v0, Lcom/iflytek/greenplug/common/utils/OSUtils$OS;

    const-string/jumbo v1, "SMARTISAN_OS"

    invoke-direct {v0, v1, v6}, Lcom/iflytek/greenplug/common/utils/OSUtils$OS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/greenplug/common/utils/OSUtils$OS;->SMARTISAN_OS:Lcom/iflytek/greenplug/common/utils/OSUtils$OS;

    .line 19
    new-instance v0, Lcom/iflytek/greenplug/common/utils/OSUtils$OS;

    const-string/jumbo v1, "SAMSUNG_OS"

    invoke-direct {v0, v1, v7}, Lcom/iflytek/greenplug/common/utils/OSUtils$OS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/greenplug/common/utils/OSUtils$OS;->SAMSUNG_OS:Lcom/iflytek/greenplug/common/utils/OSUtils$OS;

    .line 21
    new-instance v0, Lcom/iflytek/greenplug/common/utils/OSUtils$OS;

    const-string/jumbo v1, "UNKNOWN"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/iflytek/greenplug/common/utils/OSUtils$OS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/greenplug/common/utils/OSUtils$OS;->UNKNOWN:Lcom/iflytek/greenplug/common/utils/OSUtils$OS;

    .line 9
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/iflytek/greenplug/common/utils/OSUtils$OS;

    sget-object v1, Lcom/iflytek/greenplug/common/utils/OSUtils$OS;->EMUI:Lcom/iflytek/greenplug/common/utils/OSUtils$OS;

    aput-object v1, v0, v3

    sget-object v1, Lcom/iflytek/greenplug/common/utils/OSUtils$OS;->FLYME:Lcom/iflytek/greenplug/common/utils/OSUtils$OS;

    aput-object v1, v0, v4

    sget-object v1, Lcom/iflytek/greenplug/common/utils/OSUtils$OS;->MIUI:Lcom/iflytek/greenplug/common/utils/OSUtils$OS;

    aput-object v1, v0, v5

    sget-object v1, Lcom/iflytek/greenplug/common/utils/OSUtils$OS;->SMARTISAN_OS:Lcom/iflytek/greenplug/common/utils/OSUtils$OS;

    aput-object v1, v0, v6

    sget-object v1, Lcom/iflytek/greenplug/common/utils/OSUtils$OS;->SAMSUNG_OS:Lcom/iflytek/greenplug/common/utils/OSUtils$OS;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/iflytek/greenplug/common/utils/OSUtils$OS;->UNKNOWN:Lcom/iflytek/greenplug/common/utils/OSUtils$OS;

    aput-object v2, v0, v1

    sput-object v0, Lcom/iflytek/greenplug/common/utils/OSUtils$OS;->$VALUES:[Lcom/iflytek/greenplug/common/utils/OSUtils$OS;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iflytek/greenplug/common/utils/OSUtils$OS;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 9
    const-class v0, Lcom/iflytek/greenplug/common/utils/OSUtils$OS;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/iflytek/greenplug/common/utils/OSUtils$OS;

    return-object v0
.end method

.method public static values()[Lcom/iflytek/greenplug/common/utils/OSUtils$OS;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/iflytek/greenplug/common/utils/OSUtils$OS;->$VALUES:[Lcom/iflytek/greenplug/common/utils/OSUtils$OS;

    invoke-virtual {v0}, [Lcom/iflytek/greenplug/common/utils/OSUtils$OS;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iflytek/greenplug/common/utils/OSUtils$OS;

    return-object v0
.end method
