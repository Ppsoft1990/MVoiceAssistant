.class final enum Lcom/iflytek/viafly/versionupdate/ResUpdateDialog$UpdateStatus;
.super Ljava/lang/Enum;
.source "ResUpdateDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "UpdateStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/iflytek/viafly/versionupdate/ResUpdateDialog$UpdateStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iflytek/viafly/versionupdate/ResUpdateDialog$UpdateStatus;

.field public static final enum CHECK_RES_STATUS:Lcom/iflytek/viafly/versionupdate/ResUpdateDialog$UpdateStatus;

.field public static final enum DOWNLOAD_ERROR:Lcom/iflytek/viafly/versionupdate/ResUpdateDialog$UpdateStatus;

.field public static final enum DOWNLOAD_STATUS:Lcom/iflytek/viafly/versionupdate/ResUpdateDialog$UpdateStatus;

.field public static final enum IDLE_STATUS:Lcom/iflytek/viafly/versionupdate/ResUpdateDialog$UpdateStatus;

.field public static final enum UNZIP_STATUS:Lcom/iflytek/viafly/versionupdate/ResUpdateDialog$UpdateStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 69
    new-instance v0, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog$UpdateStatus;

    const-string/jumbo v1, "IDLE_STATUS"

    invoke-direct {v0, v1, v2}, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog$UpdateStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog$UpdateStatus;->IDLE_STATUS:Lcom/iflytek/viafly/versionupdate/ResUpdateDialog$UpdateStatus;

    .line 71
    new-instance v0, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog$UpdateStatus;

    const-string/jumbo v1, "CHECK_RES_STATUS"

    invoke-direct {v0, v1, v3}, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog$UpdateStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog$UpdateStatus;->CHECK_RES_STATUS:Lcom/iflytek/viafly/versionupdate/ResUpdateDialog$UpdateStatus;

    .line 73
    new-instance v0, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog$UpdateStatus;

    const-string/jumbo v1, "UNZIP_STATUS"

    invoke-direct {v0, v1, v4}, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog$UpdateStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog$UpdateStatus;->UNZIP_STATUS:Lcom/iflytek/viafly/versionupdate/ResUpdateDialog$UpdateStatus;

    .line 75
    new-instance v0, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog$UpdateStatus;

    const-string/jumbo v1, "DOWNLOAD_STATUS"

    invoke-direct {v0, v1, v5}, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog$UpdateStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog$UpdateStatus;->DOWNLOAD_STATUS:Lcom/iflytek/viafly/versionupdate/ResUpdateDialog$UpdateStatus;

    .line 77
    new-instance v0, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog$UpdateStatus;

    const-string/jumbo v1, "DOWNLOAD_ERROR"

    invoke-direct {v0, v1, v6}, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog$UpdateStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog$UpdateStatus;->DOWNLOAD_ERROR:Lcom/iflytek/viafly/versionupdate/ResUpdateDialog$UpdateStatus;

    .line 67
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/iflytek/viafly/versionupdate/ResUpdateDialog$UpdateStatus;

    sget-object v1, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog$UpdateStatus;->IDLE_STATUS:Lcom/iflytek/viafly/versionupdate/ResUpdateDialog$UpdateStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog$UpdateStatus;->CHECK_RES_STATUS:Lcom/iflytek/viafly/versionupdate/ResUpdateDialog$UpdateStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog$UpdateStatus;->UNZIP_STATUS:Lcom/iflytek/viafly/versionupdate/ResUpdateDialog$UpdateStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog$UpdateStatus;->DOWNLOAD_STATUS:Lcom/iflytek/viafly/versionupdate/ResUpdateDialog$UpdateStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog$UpdateStatus;->DOWNLOAD_ERROR:Lcom/iflytek/viafly/versionupdate/ResUpdateDialog$UpdateStatus;

    aput-object v1, v0, v6

    sput-object v0, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog$UpdateStatus;->$VALUES:[Lcom/iflytek/viafly/versionupdate/ResUpdateDialog$UpdateStatus;

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
    .line 67
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iflytek/viafly/versionupdate/ResUpdateDialog$UpdateStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 67
    const-class v0, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog$UpdateStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog$UpdateStatus;

    return-object v0
.end method

.method public static values()[Lcom/iflytek/viafly/versionupdate/ResUpdateDialog$UpdateStatus;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog$UpdateStatus;->$VALUES:[Lcom/iflytek/viafly/versionupdate/ResUpdateDialog$UpdateStatus;

    invoke-virtual {v0}, [Lcom/iflytek/viafly/versionupdate/ResUpdateDialog$UpdateStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iflytek/viafly/versionupdate/ResUpdateDialog$UpdateStatus;

    return-object v0
.end method
