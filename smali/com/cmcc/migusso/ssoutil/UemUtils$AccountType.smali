.class public final enum Lcom/cmcc/migusso/ssoutil/UemUtils$AccountType;
.super Ljava/lang/Enum;
.source "UemUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmcc/migusso/ssoutil/UemUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AccountType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/cmcc/migusso/ssoutil/UemUtils$AccountType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/cmcc/migusso/ssoutil/UemUtils$AccountType;

.field public static final enum ACCOUNTLOGIN:Lcom/cmcc/migusso/ssoutil/UemUtils$AccountType;

.field public static final enum BAIDU:Lcom/cmcc/migusso/ssoutil/UemUtils$AccountType;

.field public static final enum QQ:Lcom/cmcc/migusso/ssoutil/UemUtils$AccountType;

.field public static final enum WECHAT:Lcom/cmcc/migusso/ssoutil/UemUtils$AccountType;

.field public static final enum WEIBO:Lcom/cmcc/migusso/ssoutil/UemUtils$AccountType;

.field public static final enum ZHIFUBAO:Lcom/cmcc/migusso/ssoutil/UemUtils$AccountType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/cmcc/migusso/ssoutil/UemUtils$AccountType;

    const-string/jumbo v1, "ACCOUNTLOGIN"

    invoke-direct {v0, v1, v3}, Lcom/cmcc/migusso/ssoutil/UemUtils$AccountType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cmcc/migusso/ssoutil/UemUtils$AccountType;->ACCOUNTLOGIN:Lcom/cmcc/migusso/ssoutil/UemUtils$AccountType;

    new-instance v0, Lcom/cmcc/migusso/ssoutil/UemUtils$AccountType;

    const-string/jumbo v1, "WECHAT"

    invoke-direct {v0, v1, v4}, Lcom/cmcc/migusso/ssoutil/UemUtils$AccountType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cmcc/migusso/ssoutil/UemUtils$AccountType;->WECHAT:Lcom/cmcc/migusso/ssoutil/UemUtils$AccountType;

    new-instance v0, Lcom/cmcc/migusso/ssoutil/UemUtils$AccountType;

    const-string/jumbo v1, "QQ"

    invoke-direct {v0, v1, v5}, Lcom/cmcc/migusso/ssoutil/UemUtils$AccountType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cmcc/migusso/ssoutil/UemUtils$AccountType;->QQ:Lcom/cmcc/migusso/ssoutil/UemUtils$AccountType;

    new-instance v0, Lcom/cmcc/migusso/ssoutil/UemUtils$AccountType;

    const-string/jumbo v1, "WEIBO"

    invoke-direct {v0, v1, v6}, Lcom/cmcc/migusso/ssoutil/UemUtils$AccountType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cmcc/migusso/ssoutil/UemUtils$AccountType;->WEIBO:Lcom/cmcc/migusso/ssoutil/UemUtils$AccountType;

    new-instance v0, Lcom/cmcc/migusso/ssoutil/UemUtils$AccountType;

    const-string/jumbo v1, "ZHIFUBAO"

    invoke-direct {v0, v1, v7}, Lcom/cmcc/migusso/ssoutil/UemUtils$AccountType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cmcc/migusso/ssoutil/UemUtils$AccountType;->ZHIFUBAO:Lcom/cmcc/migusso/ssoutil/UemUtils$AccountType;

    new-instance v0, Lcom/cmcc/migusso/ssoutil/UemUtils$AccountType;

    const-string/jumbo v1, "BAIDU"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/cmcc/migusso/ssoutil/UemUtils$AccountType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cmcc/migusso/ssoutil/UemUtils$AccountType;->BAIDU:Lcom/cmcc/migusso/ssoutil/UemUtils$AccountType;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/cmcc/migusso/ssoutil/UemUtils$AccountType;

    sget-object v1, Lcom/cmcc/migusso/ssoutil/UemUtils$AccountType;->ACCOUNTLOGIN:Lcom/cmcc/migusso/ssoutil/UemUtils$AccountType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/cmcc/migusso/ssoutil/UemUtils$AccountType;->WECHAT:Lcom/cmcc/migusso/ssoutil/UemUtils$AccountType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/cmcc/migusso/ssoutil/UemUtils$AccountType;->QQ:Lcom/cmcc/migusso/ssoutil/UemUtils$AccountType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/cmcc/migusso/ssoutil/UemUtils$AccountType;->WEIBO:Lcom/cmcc/migusso/ssoutil/UemUtils$AccountType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/cmcc/migusso/ssoutil/UemUtils$AccountType;->ZHIFUBAO:Lcom/cmcc/migusso/ssoutil/UemUtils$AccountType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/cmcc/migusso/ssoutil/UemUtils$AccountType;->BAIDU:Lcom/cmcc/migusso/ssoutil/UemUtils$AccountType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/cmcc/migusso/ssoutil/UemUtils$AccountType;->$VALUES:[Lcom/cmcc/migusso/ssoutil/UemUtils$AccountType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cmcc/migusso/ssoutil/UemUtils$AccountType;
    .locals 1

    const-class v0, Lcom/cmcc/migusso/ssoutil/UemUtils$AccountType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/cmcc/migusso/ssoutil/UemUtils$AccountType;

    return-object v0
.end method

.method public static values()[Lcom/cmcc/migusso/ssoutil/UemUtils$AccountType;
    .locals 1

    sget-object v0, Lcom/cmcc/migusso/ssoutil/UemUtils$AccountType;->$VALUES:[Lcom/cmcc/migusso/ssoutil/UemUtils$AccountType;

    invoke-virtual {v0}, [Lcom/cmcc/migusso/ssoutil/UemUtils$AccountType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cmcc/migusso/ssoutil/UemUtils$AccountType;

    return-object v0
.end method
