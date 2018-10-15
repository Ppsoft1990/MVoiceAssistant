.class final enum Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment$SettingType;
.super Ljava/lang/Enum;
.source "CmccSettingFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "SettingType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment$SettingType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment$SettingType;

.field public static final enum DadayTraffic:Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment$SettingType;

.field public static final enum FeeTraffic:Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment$SettingType;

.field public static final enum MonthTraffic:Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment$SettingType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 47
    new-instance v0, Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment$SettingType;

    const-string/jumbo v1, "FeeTraffic"

    invoke-direct {v0, v1, v2}, Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment$SettingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment$SettingType;->FeeTraffic:Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment$SettingType;

    .line 48
    new-instance v0, Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment$SettingType;

    const-string/jumbo v1, "MonthTraffic"

    invoke-direct {v0, v1, v3}, Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment$SettingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment$SettingType;->MonthTraffic:Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment$SettingType;

    .line 49
    new-instance v0, Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment$SettingType;

    const-string/jumbo v1, "DadayTraffic"

    invoke-direct {v0, v1, v4}, Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment$SettingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment$SettingType;->DadayTraffic:Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment$SettingType;

    .line 46
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment$SettingType;

    sget-object v1, Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment$SettingType;->FeeTraffic:Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment$SettingType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment$SettingType;->MonthTraffic:Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment$SettingType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment$SettingType;->DadayTraffic:Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment$SettingType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment$SettingType;->$VALUES:[Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment$SettingType;

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
    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment$SettingType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 46
    const-class v0, Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment$SettingType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment$SettingType;

    return-object v0
.end method

.method public static values()[Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment$SettingType;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment$SettingType;->$VALUES:[Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment$SettingType;

    invoke-virtual {v0}, [Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment$SettingType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment$SettingType;

    return-object v0
.end method
