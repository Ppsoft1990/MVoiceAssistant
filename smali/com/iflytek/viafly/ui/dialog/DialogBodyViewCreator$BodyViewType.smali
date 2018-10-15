.class public final enum Lcom/iflytek/viafly/ui/dialog/DialogBodyViewCreator$BodyViewType;
.super Ljava/lang/Enum;
.source "DialogBodyViewCreator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/ui/dialog/DialogBodyViewCreator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BodyViewType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/iflytek/viafly/ui/dialog/DialogBodyViewCreator$BodyViewType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iflytek/viafly/ui/dialog/DialogBodyViewCreator$BodyViewType;

.field public static final enum DownloadProgressBodyView:Lcom/iflytek/viafly/ui/dialog/DialogBodyViewCreator$BodyViewType;

.field public static final enum DownloadProgressDialogBodyView:Lcom/iflytek/viafly/ui/dialog/DialogBodyViewCreator$BodyViewType;

.field public static final enum LoadingBodyView:Lcom/iflytek/viafly/ui/dialog/DialogBodyViewCreator$BodyViewType;

.field public static final enum MessageBodyView:Lcom/iflytek/viafly/ui/dialog/DialogBodyViewCreator$BodyViewType;

.field public static final enum MessageWithCheckboxDialogBodyView:Lcom/iflytek/viafly/ui/dialog/DialogBodyViewCreator$BodyViewType;

.field public static final enum PicAndMessageBodyView:Lcom/iflytek/viafly/ui/dialog/DialogBodyViewCreator$BodyViewType;

.field public static final enum TwoTextViewBodyView:Lcom/iflytek/viafly/ui/dialog/DialogBodyViewCreator$BodyViewType;

.field public static final enum WaitingBodyView:Lcom/iflytek/viafly/ui/dialog/DialogBodyViewCreator$BodyViewType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 18
    new-instance v0, Lcom/iflytek/viafly/ui/dialog/DialogBodyViewCreator$BodyViewType;

    const-string/jumbo v1, "MessageBodyView"

    invoke-direct {v0, v1, v3}, Lcom/iflytek/viafly/ui/dialog/DialogBodyViewCreator$BodyViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/ui/dialog/DialogBodyViewCreator$BodyViewType;->MessageBodyView:Lcom/iflytek/viafly/ui/dialog/DialogBodyViewCreator$BodyViewType;

    .line 19
    new-instance v0, Lcom/iflytek/viafly/ui/dialog/DialogBodyViewCreator$BodyViewType;

    const-string/jumbo v1, "MessageWithCheckboxDialogBodyView"

    invoke-direct {v0, v1, v4}, Lcom/iflytek/viafly/ui/dialog/DialogBodyViewCreator$BodyViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/ui/dialog/DialogBodyViewCreator$BodyViewType;->MessageWithCheckboxDialogBodyView:Lcom/iflytek/viafly/ui/dialog/DialogBodyViewCreator$BodyViewType;

    .line 20
    new-instance v0, Lcom/iflytek/viafly/ui/dialog/DialogBodyViewCreator$BodyViewType;

    const-string/jumbo v1, "PicAndMessageBodyView"

    invoke-direct {v0, v1, v5}, Lcom/iflytek/viafly/ui/dialog/DialogBodyViewCreator$BodyViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/ui/dialog/DialogBodyViewCreator$BodyViewType;->PicAndMessageBodyView:Lcom/iflytek/viafly/ui/dialog/DialogBodyViewCreator$BodyViewType;

    .line 21
    new-instance v0, Lcom/iflytek/viafly/ui/dialog/DialogBodyViewCreator$BodyViewType;

    const-string/jumbo v1, "LoadingBodyView"

    invoke-direct {v0, v1, v6}, Lcom/iflytek/viafly/ui/dialog/DialogBodyViewCreator$BodyViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/ui/dialog/DialogBodyViewCreator$BodyViewType;->LoadingBodyView:Lcom/iflytek/viafly/ui/dialog/DialogBodyViewCreator$BodyViewType;

    .line 22
    new-instance v0, Lcom/iflytek/viafly/ui/dialog/DialogBodyViewCreator$BodyViewType;

    const-string/jumbo v1, "DownloadProgressBodyView"

    invoke-direct {v0, v1, v7}, Lcom/iflytek/viafly/ui/dialog/DialogBodyViewCreator$BodyViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/ui/dialog/DialogBodyViewCreator$BodyViewType;->DownloadProgressBodyView:Lcom/iflytek/viafly/ui/dialog/DialogBodyViewCreator$BodyViewType;

    .line 23
    new-instance v0, Lcom/iflytek/viafly/ui/dialog/DialogBodyViewCreator$BodyViewType;

    const-string/jumbo v1, "WaitingBodyView"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/iflytek/viafly/ui/dialog/DialogBodyViewCreator$BodyViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/ui/dialog/DialogBodyViewCreator$BodyViewType;->WaitingBodyView:Lcom/iflytek/viafly/ui/dialog/DialogBodyViewCreator$BodyViewType;

    .line 24
    new-instance v0, Lcom/iflytek/viafly/ui/dialog/DialogBodyViewCreator$BodyViewType;

    const-string/jumbo v1, "DownloadProgressDialogBodyView"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/iflytek/viafly/ui/dialog/DialogBodyViewCreator$BodyViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/ui/dialog/DialogBodyViewCreator$BodyViewType;->DownloadProgressDialogBodyView:Lcom/iflytek/viafly/ui/dialog/DialogBodyViewCreator$BodyViewType;

    .line 25
    new-instance v0, Lcom/iflytek/viafly/ui/dialog/DialogBodyViewCreator$BodyViewType;

    const-string/jumbo v1, "TwoTextViewBodyView"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/iflytek/viafly/ui/dialog/DialogBodyViewCreator$BodyViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/ui/dialog/DialogBodyViewCreator$BodyViewType;->TwoTextViewBodyView:Lcom/iflytek/viafly/ui/dialog/DialogBodyViewCreator$BodyViewType;

    .line 17
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/iflytek/viafly/ui/dialog/DialogBodyViewCreator$BodyViewType;

    sget-object v1, Lcom/iflytek/viafly/ui/dialog/DialogBodyViewCreator$BodyViewType;->MessageBodyView:Lcom/iflytek/viafly/ui/dialog/DialogBodyViewCreator$BodyViewType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/iflytek/viafly/ui/dialog/DialogBodyViewCreator$BodyViewType;->MessageWithCheckboxDialogBodyView:Lcom/iflytek/viafly/ui/dialog/DialogBodyViewCreator$BodyViewType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/iflytek/viafly/ui/dialog/DialogBodyViewCreator$BodyViewType;->PicAndMessageBodyView:Lcom/iflytek/viafly/ui/dialog/DialogBodyViewCreator$BodyViewType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/iflytek/viafly/ui/dialog/DialogBodyViewCreator$BodyViewType;->LoadingBodyView:Lcom/iflytek/viafly/ui/dialog/DialogBodyViewCreator$BodyViewType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/iflytek/viafly/ui/dialog/DialogBodyViewCreator$BodyViewType;->DownloadProgressBodyView:Lcom/iflytek/viafly/ui/dialog/DialogBodyViewCreator$BodyViewType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/iflytek/viafly/ui/dialog/DialogBodyViewCreator$BodyViewType;->WaitingBodyView:Lcom/iflytek/viafly/ui/dialog/DialogBodyViewCreator$BodyViewType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/iflytek/viafly/ui/dialog/DialogBodyViewCreator$BodyViewType;->DownloadProgressDialogBodyView:Lcom/iflytek/viafly/ui/dialog/DialogBodyViewCreator$BodyViewType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/iflytek/viafly/ui/dialog/DialogBodyViewCreator$BodyViewType;->TwoTextViewBodyView:Lcom/iflytek/viafly/ui/dialog/DialogBodyViewCreator$BodyViewType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/iflytek/viafly/ui/dialog/DialogBodyViewCreator$BodyViewType;->$VALUES:[Lcom/iflytek/viafly/ui/dialog/DialogBodyViewCreator$BodyViewType;

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
    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iflytek/viafly/ui/dialog/DialogBodyViewCreator$BodyViewType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 17
    const-class v0, Lcom/iflytek/viafly/ui/dialog/DialogBodyViewCreator$BodyViewType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/ui/dialog/DialogBodyViewCreator$BodyViewType;

    return-object v0
.end method

.method public static values()[Lcom/iflytek/viafly/ui/dialog/DialogBodyViewCreator$BodyViewType;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/iflytek/viafly/ui/dialog/DialogBodyViewCreator$BodyViewType;->$VALUES:[Lcom/iflytek/viafly/ui/dialog/DialogBodyViewCreator$BodyViewType;

    invoke-virtual {v0}, [Lcom/iflytek/viafly/ui/dialog/DialogBodyViewCreator$BodyViewType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iflytek/viafly/ui/dialog/DialogBodyViewCreator$BodyViewType;

    return-object v0
.end method
