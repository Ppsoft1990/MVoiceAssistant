.class public final enum Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialog$ViewStatus;
.super Ljava/lang/Enum;
.source "DownloadProgressDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ViewStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialog$ViewStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialog$ViewStatus;

.field public static final enum DOWNLOADING:Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialog$ViewStatus;

.field public static final enum DOWNLOAD_ERROR:Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialog$ViewStatus;

.field public static final enum REQUESTING:Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialog$ViewStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 23
    new-instance v0, Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialog$ViewStatus;

    const-string/jumbo v1, "REQUESTING"

    invoke-direct {v0, v1, v2}, Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialog$ViewStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialog$ViewStatus;->REQUESTING:Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialog$ViewStatus;

    new-instance v0, Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialog$ViewStatus;

    const-string/jumbo v1, "DOWNLOADING"

    invoke-direct {v0, v1, v3}, Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialog$ViewStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialog$ViewStatus;->DOWNLOADING:Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialog$ViewStatus;

    new-instance v0, Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialog$ViewStatus;

    const-string/jumbo v1, "DOWNLOAD_ERROR"

    invoke-direct {v0, v1, v4}, Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialog$ViewStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialog$ViewStatus;->DOWNLOAD_ERROR:Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialog$ViewStatus;

    .line 22
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialog$ViewStatus;

    sget-object v1, Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialog$ViewStatus;->REQUESTING:Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialog$ViewStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialog$ViewStatus;->DOWNLOADING:Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialog$ViewStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialog$ViewStatus;->DOWNLOAD_ERROR:Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialog$ViewStatus;

    aput-object v1, v0, v4

    sput-object v0, Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialog$ViewStatus;->$VALUES:[Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialog$ViewStatus;

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
    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialog$ViewStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 22
    const-class v0, Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialog$ViewStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialog$ViewStatus;

    return-object v0
.end method

.method public static values()[Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialog$ViewStatus;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialog$ViewStatus;->$VALUES:[Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialog$ViewStatus;

    invoke-virtual {v0}, [Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialog$ViewStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialog$ViewStatus;

    return-object v0
.end method
