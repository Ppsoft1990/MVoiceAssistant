.class public final enum Lcom/cmcc/migusso/ssoutil/UemUtils$LoginType;
.super Ljava/lang/Enum;
.source "UemUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmcc/migusso/ssoutil/UemUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LoginType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/cmcc/migusso/ssoutil/UemUtils$LoginType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/cmcc/migusso/ssoutil/UemUtils$LoginType;

.field public static final enum ACCOUNTLOGIN:Lcom/cmcc/migusso/ssoutil/UemUtils$LoginType;

.field public static final enum AUTOLOGIN:Lcom/cmcc/migusso/ssoutil/UemUtils$LoginType;

.field public static final enum SMSLOGIN:Lcom/cmcc/migusso/ssoutil/UemUtils$LoginType;

.field public static final enum THIRDLOGIN:Lcom/cmcc/migusso/ssoutil/UemUtils$LoginType;


# instance fields
.field private a:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/cmcc/migusso/ssoutil/UemUtils$LoginType;

    const-string/jumbo v1, "ACCOUNTLOGIN"

    const/16 v2, 0x2710

    invoke-direct {v0, v1, v3, v2}, Lcom/cmcc/migusso/ssoutil/UemUtils$LoginType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cmcc/migusso/ssoutil/UemUtils$LoginType;->ACCOUNTLOGIN:Lcom/cmcc/migusso/ssoutil/UemUtils$LoginType;

    new-instance v0, Lcom/cmcc/migusso/ssoutil/UemUtils$LoginType;

    const-string/jumbo v1, "AUTOLOGIN"

    const/16 v2, 0x2711

    invoke-direct {v0, v1, v4, v2}, Lcom/cmcc/migusso/ssoutil/UemUtils$LoginType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cmcc/migusso/ssoutil/UemUtils$LoginType;->AUTOLOGIN:Lcom/cmcc/migusso/ssoutil/UemUtils$LoginType;

    new-instance v0, Lcom/cmcc/migusso/ssoutil/UemUtils$LoginType;

    const-string/jumbo v1, "SMSLOGIN"

    const/16 v2, 0x2712

    invoke-direct {v0, v1, v5, v2}, Lcom/cmcc/migusso/ssoutil/UemUtils$LoginType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cmcc/migusso/ssoutil/UemUtils$LoginType;->SMSLOGIN:Lcom/cmcc/migusso/ssoutil/UemUtils$LoginType;

    new-instance v0, Lcom/cmcc/migusso/ssoutil/UemUtils$LoginType;

    const-string/jumbo v1, "THIRDLOGIN"

    const/16 v2, 0x2713

    invoke-direct {v0, v1, v6, v2}, Lcom/cmcc/migusso/ssoutil/UemUtils$LoginType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cmcc/migusso/ssoutil/UemUtils$LoginType;->THIRDLOGIN:Lcom/cmcc/migusso/ssoutil/UemUtils$LoginType;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/cmcc/migusso/ssoutil/UemUtils$LoginType;

    sget-object v1, Lcom/cmcc/migusso/ssoutil/UemUtils$LoginType;->ACCOUNTLOGIN:Lcom/cmcc/migusso/ssoutil/UemUtils$LoginType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/cmcc/migusso/ssoutil/UemUtils$LoginType;->AUTOLOGIN:Lcom/cmcc/migusso/ssoutil/UemUtils$LoginType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/cmcc/migusso/ssoutil/UemUtils$LoginType;->SMSLOGIN:Lcom/cmcc/migusso/ssoutil/UemUtils$LoginType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/cmcc/migusso/ssoutil/UemUtils$LoginType;->THIRDLOGIN:Lcom/cmcc/migusso/ssoutil/UemUtils$LoginType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/cmcc/migusso/ssoutil/UemUtils$LoginType;->$VALUES:[Lcom/cmcc/migusso/ssoutil/UemUtils$LoginType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/cmcc/migusso/ssoutil/UemUtils$LoginType;->a:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cmcc/migusso/ssoutil/UemUtils$LoginType;
    .locals 1

    const-class v0, Lcom/cmcc/migusso/ssoutil/UemUtils$LoginType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/cmcc/migusso/ssoutil/UemUtils$LoginType;

    return-object v0
.end method

.method public static values()[Lcom/cmcc/migusso/ssoutil/UemUtils$LoginType;
    .locals 1

    sget-object v0, Lcom/cmcc/migusso/ssoutil/UemUtils$LoginType;->$VALUES:[Lcom/cmcc/migusso/ssoutil/UemUtils$LoginType;

    invoke-virtual {v0}, [Lcom/cmcc/migusso/ssoutil/UemUtils$LoginType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cmcc/migusso/ssoutil/UemUtils$LoginType;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/cmcc/migusso/ssoutil/UemUtils$LoginType;->a:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
