.class public Lcom/iflytek/common/adaptation/detect/DetectorConstant;
.super Ljava/lang/Object;
.source "DetectorConstant.java"


# static fields
.field public static final CACHE_ADAPTERS:Ljava/lang/String;

.field public static final CALL_ADAPTER_PKGPATH:Ljava/lang/String; = "com.iflytek.common.adaptation.call."

.field public static final INBOX_URI:Landroid/net/Uri;

.field public static final OUTBOX_URI:Landroid/net/Uri;

.field public static final SIMINFO_ADAPTER_PKGPATH:Ljava/lang/String; = "com.iflytek.common.adaptation.siminfo."

.field public static final SIM_IMSI:Ljava/lang/String; = "sim_imsi"

.field public static final SMS_ADAPTER_PKGPATH:Ljava/lang/String; = "com.iflytek.common.adaptation.mms."


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 9
    const-string/jumbo v0, "content://sms/outbox"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/iflytek/common/adaptation/detect/DetectorConstant;->OUTBOX_URI:Landroid/net/Uri;

    .line 11
    const-string/jumbo v0, "content://sms/inbox"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/iflytek/common/adaptation/detect/DetectorConstant;->INBOX_URI:Landroid/net/Uri;

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lnj;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/cache_adapters.txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/iflytek/common/adaptation/detect/DetectorConstant;->CACHE_ADAPTERS:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
