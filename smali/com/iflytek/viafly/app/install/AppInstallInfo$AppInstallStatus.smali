.class public final enum Lcom/iflytek/viafly/app/install/AppInstallInfo$AppInstallStatus;
.super Ljava/lang/Enum;
.source "AppInstallInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/app/install/AppInstallInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AppInstallStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/iflytek/viafly/app/install/AppInstallInfo$AppInstallStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iflytek/viafly/app/install/AppInstallInfo$AppInstallStatus;

.field public static final enum downloading:Lcom/iflytek/viafly/app/install/AppInstallInfo$AppInstallStatus;

.field public static final enum init:Lcom/iflytek/viafly/app/install/AppInstallInfo$AppInstallStatus;

.field public static final enum installing:Lcom/iflytek/viafly/app/install/AppInstallInfo$AppInstallStatus;

.field public static final enum requesting:Lcom/iflytek/viafly/app/install/AppInstallInfo$AppInstallStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 13
    new-instance v0, Lcom/iflytek/viafly/app/install/AppInstallInfo$AppInstallStatus;

    const-string/jumbo v1, "init"

    invoke-direct {v0, v1, v2}, Lcom/iflytek/viafly/app/install/AppInstallInfo$AppInstallStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/app/install/AppInstallInfo$AppInstallStatus;->init:Lcom/iflytek/viafly/app/install/AppInstallInfo$AppInstallStatus;

    new-instance v0, Lcom/iflytek/viafly/app/install/AppInstallInfo$AppInstallStatus;

    const-string/jumbo v1, "requesting"

    invoke-direct {v0, v1, v3}, Lcom/iflytek/viafly/app/install/AppInstallInfo$AppInstallStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/app/install/AppInstallInfo$AppInstallStatus;->requesting:Lcom/iflytek/viafly/app/install/AppInstallInfo$AppInstallStatus;

    new-instance v0, Lcom/iflytek/viafly/app/install/AppInstallInfo$AppInstallStatus;

    const-string/jumbo v1, "downloading"

    invoke-direct {v0, v1, v4}, Lcom/iflytek/viafly/app/install/AppInstallInfo$AppInstallStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/app/install/AppInstallInfo$AppInstallStatus;->downloading:Lcom/iflytek/viafly/app/install/AppInstallInfo$AppInstallStatus;

    new-instance v0, Lcom/iflytek/viafly/app/install/AppInstallInfo$AppInstallStatus;

    const-string/jumbo v1, "installing"

    invoke-direct {v0, v1, v5}, Lcom/iflytek/viafly/app/install/AppInstallInfo$AppInstallStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/app/install/AppInstallInfo$AppInstallStatus;->installing:Lcom/iflytek/viafly/app/install/AppInstallInfo$AppInstallStatus;

    .line 12
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/iflytek/viafly/app/install/AppInstallInfo$AppInstallStatus;

    sget-object v1, Lcom/iflytek/viafly/app/install/AppInstallInfo$AppInstallStatus;->init:Lcom/iflytek/viafly/app/install/AppInstallInfo$AppInstallStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/iflytek/viafly/app/install/AppInstallInfo$AppInstallStatus;->requesting:Lcom/iflytek/viafly/app/install/AppInstallInfo$AppInstallStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/iflytek/viafly/app/install/AppInstallInfo$AppInstallStatus;->downloading:Lcom/iflytek/viafly/app/install/AppInstallInfo$AppInstallStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/iflytek/viafly/app/install/AppInstallInfo$AppInstallStatus;->installing:Lcom/iflytek/viafly/app/install/AppInstallInfo$AppInstallStatus;

    aput-object v1, v0, v5

    sput-object v0, Lcom/iflytek/viafly/app/install/AppInstallInfo$AppInstallStatus;->$VALUES:[Lcom/iflytek/viafly/app/install/AppInstallInfo$AppInstallStatus;

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
    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iflytek/viafly/app/install/AppInstallInfo$AppInstallStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 12
    const-class v0, Lcom/iflytek/viafly/app/install/AppInstallInfo$AppInstallStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/app/install/AppInstallInfo$AppInstallStatus;

    return-object v0
.end method

.method public static values()[Lcom/iflytek/viafly/app/install/AppInstallInfo$AppInstallStatus;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/iflytek/viafly/app/install/AppInstallInfo$AppInstallStatus;->$VALUES:[Lcom/iflytek/viafly/app/install/AppInstallInfo$AppInstallStatus;

    invoke-virtual {v0}, [Lcom/iflytek/viafly/app/install/AppInstallInfo$AppInstallStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iflytek/viafly/app/install/AppInstallInfo$AppInstallStatus;

    return-object v0
.end method
