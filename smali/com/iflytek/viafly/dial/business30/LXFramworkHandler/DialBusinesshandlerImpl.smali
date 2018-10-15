.class public Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl;
.super Labx;
.source "DialBusinesshandlerImpl.java"


# static fields
.field private static final DEFAULTNAME:Ljava/lang/String; = "\u5f20\u4e09"

.field private static final DEFAULTNAME2:Ljava/lang/String; = "\u674e\u56db"

.field private static final MSG_DIALOG_CREATE:I = 0x0

.field private static final MSG_DIALOG_DISMISS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "DialBusinesshandlerImpl"

.field public static mInstance:Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl;

.field public static mRecommendUrl:Ljava/lang/String;


# instance fields
.field private jaString:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mLastDeleteLogDialog:Landroid/app/Dialog;

.field private mScenceDataCache:Lacf;

.field private mSpeakCallBack:Lacs;

.field private mailAlertDialog:Lcom/iflytek/viafly/ui/dialog/MailAlertDialog;

.field private selectedName:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 121
    const-string/jumbo v0, ""

    sput-object v0, Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl;->mRecommendUrl:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 157
    invoke-direct {p0}, Labx;-><init>()V

    .line 123
    new-instance v0, Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl$1;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl$1;-><init>(Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl;)V

    iput-object v0, p0, Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl;->mHandler:Landroid/os/Handler;

    .line 157
    return-void
.end method

.method static synthetic access$000(Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl;

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl;)Lcom/iflytek/viafly/ui/dialog/MailAlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl;->mailAlertDialog:Lcom/iflytek/viafly/ui/dialog/MailAlertDialog;

    return-object v0
.end method

.method static synthetic access$102(Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl;Lcom/iflytek/viafly/ui/dialog/MailAlertDialog;)Lcom/iflytek/viafly/ui/dialog/MailAlertDialog;
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl;
    .param p1, "x1"    # Lcom/iflytek/viafly/ui/dialog/MailAlertDialog;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl;->mailAlertDialog:Lcom/iflytek/viafly/ui/dialog/MailAlertDialog;

    return-object p1
.end method

.method static synthetic access$200(Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl;->jaString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl;

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl;->postRefreshRecommendedView()V

    return-void
.end method

.method public static getInstance()Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl;
    .locals 2

    .prologue
    .line 160
    sget-object v0, Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl;->mInstance:Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl;

    if-nez v0, :cond_1

    .line 161
    const-class v1, Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl;

    monitor-enter v1

    .line 162
    :try_start_0
    sget-object v0, Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl;->mInstance:Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl;

    if-nez v0, :cond_0

    .line 163
    new-instance v0, Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl;

    invoke-direct {v0}, Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl;-><init>()V

    sput-object v0, Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl;->mInstance:Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl;

    .line 165
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    :cond_1
    sget-object v0, Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl;->mInstance:Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl;

    return-object v0

    .line 165
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private getRecommendedDownloadUrl()V
    .locals 5

    .prologue
    .line 706
    sget-object v1, Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl;->mRecommendUrl:Ljava/lang/String;

    .line 707
    .local v1, "url":Ljava/lang/String;
    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 709
    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/String;

    .line 710
    .local v0, "clintId":[Ljava/lang/String;
    const/4 v2, 0x0

    const-string/jumbo v3, ""

    aput-object v3, v0, v2

    .line 711
    invoke-static {}, Lvt;->b()Lvt;

    move-result-object v2

    const/16 v3, 0xc

    new-instance v4, Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl$2;

    invoke-direct {v4, p0}, Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl$2;-><init>(Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl;)V

    invoke-virtual {v2, v0, v3, v4}, Lvt;->a([Ljava/lang/String;ILvt$a;)V

    .line 743
    .end local v0    # "clintId":[Ljava/lang/String;
    :goto_0
    return-void

    .line 741
    :cond_0
    invoke-direct {p0}, Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl;->postRefreshRecommendedView()V

    goto :goto_0
.end method

.method public static getScenceDataCachePublic()Lacf;
    .locals 4

    .prologue
    .line 979
    invoke-static {}, Lcom/iflytek/framework/business/BusinessFactory;->getManager()Lcom/iflytek/framework/business/interfaces/IBussinessManager;

    move-result-object v2

    .line 980
    .local v2, "mBussinessManager":Lcom/iflytek/framework/business/interfaces/IBussinessManager;
    const-string/jumbo v3, "telephone"

    .line 981
    invoke-interface {v2, v3}, Lcom/iflytek/framework/business/interfaces/IBussinessManager;->getBusinessHandler(Ljava/lang/String;)Lcom/iflytek/framework/business/interfaces/IBusinessHandler;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl;

    .line 982
    .local v0, "businessHandler":Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl;
    invoke-virtual {v0}, Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl;->getScenceDataCache()Lacf;

    move-result-object v1

    .line 984
    .local v1, "lastScenceData":Lacf;
    return-object v1
.end method

.method private static judgeAndDoDirectCallFromShortCutSpeech(Landroid/content/Context;Lcom/iflytek/yd/speech/ViaAsrResult;)Z
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "result"    # Lcom/iflytek/yd/speech/ViaAsrResult;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 888
    invoke-static {}, Laba;->a()Laba;

    move-result-object v7

    invoke-virtual {v7}, Laba;->b()Z

    move-result v7

    if-eqz v7, :cond_0

    move v7, v8

    .line 934
    :goto_0
    return v7

    .line 891
    :cond_0
    new-instance v1, Lzx;

    invoke-direct {v1}, Lzx;-><init>()V

    .line 892
    .local v1, "recognizeFilter":Lcom/iflytek/yd/speech/RecognizeFilter;
    invoke-virtual {v1, p1}, Lcom/iflytek/yd/speech/RecognizeFilter;->filterRecognizeResult(Lcom/iflytek/yd/speech/ViaAsrResult;)Lcom/iflytek/yd/speech/FilterResult;

    move-result-object v0

    check-cast v0, Laau;

    .line 894
    .local v0, "mFilterResult":Laau;
    invoke-virtual {v0}, Laau;->getFocus()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v10, "telephone"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    move v7, v8

    .line 895
    goto :goto_0

    .line 898
    :cond_1
    invoke-static {p0, v0}, Lazk;->a(Landroid/content/Context;Laau;)Lcom/iflytek/base/contacts/entities/ContactSet;

    move-result-object v2

    .line 900
    .local v2, "set":Lcom/iflytek/base/contacts/entities/ContactSet;
    if-eqz v2, :cond_2

    .line 902
    invoke-static {}, Lgx;->a()Lgx;

    move-result-object v7

    invoke-virtual {v7, p0}, Lgx;->a(Landroid/content/Context;)V

    .line 903
    invoke-static {}, Lgx;->a()Lgx;

    move-result-object v10

    invoke-virtual {v2}, Lcom/iflytek/base/contacts/entities/ContactSet;->getNumbers()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v10, v7}, Lgx;->a(Ljava/lang/String;)V

    move v7, v9

    .line 904
    goto :goto_0

    .line 907
    :cond_2
    invoke-virtual {v0}, Laau;->c()Ljava/util/List;

    move-result-object v4

    .line 908
    .local v4, "tNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v4, :cond_7

    .line 910
    invoke-static {p0}, Lhe;->a(Landroid/content/Context;)Lhe;

    move-result-object v7

    const/4 v10, 0x0

    invoke-virtual {v7, p0, v4, v10}, Lhe;->a(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 911
    .local v3, "tContacts":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/base/contacts/entities/ContactSet;>;"
    if-eqz v3, :cond_3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-eq v7, v9, :cond_4

    :cond_3
    move v7, v8

    .line 912
    goto :goto_0

    .line 914
    :cond_4
    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/iflytek/base/contacts/entities/ContactSet;

    invoke-virtual {v7}, Lcom/iflytek/base/contacts/entities/ContactSet;->getNumbers()Ljava/util/ArrayList;

    move-result-object v6

    .line 915
    .local v6, "tNumbers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v6, :cond_5

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-eq v7, v9, :cond_6

    :cond_5
    move v7, v8

    .line 916
    goto :goto_0

    .line 919
    :cond_6
    invoke-static {}, Lgx;->a()Lgx;

    move-result-object v7

    invoke-virtual {v7, p0}, Lgx;->a(Landroid/content/Context;)V

    .line 920
    invoke-static {}, Lgx;->a()Lgx;

    move-result-object v10

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v10, v7}, Lgx;->a(Ljava/lang/String;)V

    move v7, v9

    .line 921
    goto :goto_0

    .line 924
    .end local v3    # "tContacts":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/base/contacts/entities/ContactSet;>;"
    .end local v6    # "tNumbers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_7
    invoke-virtual {v0}, Laau;->d()Ljava/util/List;

    move-result-object v5

    .line 925
    .local v5, "tNumberList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v5, :cond_8

    .line 926
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-ne v7, v9, :cond_8

    .line 927
    invoke-static {}, Lgx;->a()Lgx;

    move-result-object v7

    invoke-virtual {v7, p0}, Lgx;->a(Landroid/content/Context;)V

    .line 928
    invoke-static {}, Lgx;->a()Lgx;

    move-result-object v10

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v10, v7}, Lgx;->a(Ljava/lang/String;)V

    move v7, v9

    .line 929
    goto/16 :goto_0

    :cond_8
    move v7, v8

    .line 934
    goto/16 :goto_0
.end method

.method private postRefreshRecommendedView()V
    .locals 12

    .prologue
    .line 749
    const/4 v6, 0x0

    .line 750
    .local v6, "process":I
    const/4 v4, 0x0

    .line 751
    .local v4, "isInstallDial":Z
    invoke-virtual {p0}, Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl;->getHandleContext()Lcom/iflytek/framework/business/entities/HandleContext;

    move-result-object v3

    .line 752
    .local v3, "handleContext":Lcom/iflytek/framework/business/entities/HandleContext;
    invoke-virtual {v3}, Lcom/iflytek/framework/business/entities/HandleContext;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 753
    .local v1, "context":Landroid/content/Context;
    if-eqz v3, :cond_0

    if-nez v1, :cond_1

    .line 785
    :cond_0
    :goto_0
    return-void

    .line 757
    :cond_1
    const-string/jumbo v9, ""

    invoke-static {v1, v9}, Lgq;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    .line 759
    sget-object v8, Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl;->mRecommendUrl:Ljava/lang/String;

    .line 760
    .local v8, "url":Ljava/lang/String;
    invoke-static {v1}, Lno;->a(Landroid/content/Context;)Lno;

    move-result-object v9

    invoke-virtual {v9, v8}, Lno;->f(Ljava/lang/String;)Lcom/iflytek/common/download/entities/DownloadInfo;

    move-result-object v2

    .line 762
    .local v2, "downloadInfo":Lcom/iflytek/common/download/entities/DownloadInfo;
    if-eqz v2, :cond_5

    const/4 v9, 0x1

    .line 763
    invoke-virtual {v2}, Lcom/iflytek/common/download/entities/DownloadInfo;->getStatus()I

    move-result v10

    if-eq v9, v10, :cond_2

    const/4 v9, 0x2

    .line 764
    invoke-virtual {v2}, Lcom/iflytek/common/download/entities/DownloadInfo;->getStatus()I

    move-result v10

    if-eq v9, v10, :cond_2

    const/4 v9, 0x4

    .line 765
    invoke-virtual {v2}, Lcom/iflytek/common/download/entities/DownloadInfo;->getStatus()I

    move-result v10

    if-ne v9, v10, :cond_5

    .line 766
    :cond_2
    const/4 v6, 0x1

    .line 771
    :cond_3
    :goto_1
    if-eqz v3, :cond_0

    .line 772
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 774
    .local v7, "recommendedInfo":Lorg/json/JSONObject;
    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lazk;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 775
    .local v5, "jString":Ljava/lang/String;
    const-string/jumbo v9, "{}"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 776
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "{\"isInstallDial\":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ",\"process\":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "}"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 778
    :cond_4
    invoke-virtual {v3}, Lcom/iflytek/framework/business/entities/HandleContext;->getWidgetContainerInterface()Lcom/iflytek/framework/ui/container/WidgetContainerInterface;

    move-result-object v0

    check-cast v0, Lcom/iflytek/framework/browser/localControlView/OperationView;

    .line 779
    .local v0, "containerForMMP":Lcom/iflytek/framework/browser/localControlView/OperationView;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/iflytek/framework/browser/localControlView/OperationView;->getLocalBusinessView()Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 780
    invoke-virtual {v0}, Lcom/iflytek/framework/browser/localControlView/OperationView;->getLocalBusinessView()Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "sub_tel_guide.updateUI(\'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "\')"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 781
    invoke-virtual {v9, v10}, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;->loadJavaScript(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 767
    .end local v0    # "containerForMMP":Lcom/iflytek/framework/browser/localControlView/OperationView;
    .end local v5    # "jString":Ljava/lang/String;
    .end local v7    # "recommendedInfo":Lorg/json/JSONObject;
    :cond_5
    if-eqz v4, :cond_3

    .line 768
    const/4 v6, 0x2

    goto :goto_1
.end method

.method public static release()V
    .locals 2

    .prologue
    .line 171
    const-string/jumbo v0, "DialBusinesshandlerImpl"

    const-string/jumbo v1, "release"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    const/4 v0, 0x0

    sput-object v0, Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl;->mInstance:Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl;

    .line 173
    return-void
.end method

.method private showSpeechTipsView(Ljava/lang/String;)V
    .locals 6
    .param p1, "tips"    # Ljava/lang/String;

    .prologue
    .line 942
    invoke-virtual {p0}, Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl;->getHandleContext()Lcom/iflytek/framework/business/entities/HandleContext;

    move-result-object v4

    invoke-virtual {v4}, Lcom/iflytek/framework/business/entities/HandleContext;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 943
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_1

    instance-of v4, v0, Lcom/iflytek/viafly/Home;

    if-eqz v4, :cond_1

    move-object v4, v0

    .line 944
    check-cast v4, Lcom/iflytek/viafly/Home;

    .line 945
    invoke-virtual {v4}, Lcom/iflytek/viafly/Home;->a()Lqr;

    move-result-object v2

    .line 946
    .local v2, "mainSpeechView":Lqr;
    invoke-static {}, Labb;->f()Ladp;

    move-result-object v1

    .line 947
    .local v1, "mDialSpeechTips":Ladp;
    if-nez v1, :cond_0

    .line 948
    new-instance v1, Ladp;

    .end local v1    # "mDialSpeechTips":Ladp;
    invoke-direct {v1, v0}, Ladp;-><init>(Landroid/content/Context;)V

    .line 949
    .restart local v1    # "mDialSpeechTips":Ladp;
    invoke-static {v1}, Labb;->a(Ladp;)V

    .line 952
    :cond_0
    invoke-virtual {v1}, Ladp;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 953
    invoke-virtual {v1, p1}, Ladp;->a(Ljava/lang/String;)V

    .line 962
    .end local v1    # "mDialSpeechTips":Ladp;
    .end local v2    # "mainSpeechView":Lqr;
    :cond_1
    :goto_0
    return-void

    .line 955
    .restart local v1    # "mDialSpeechTips":Ladp;
    .restart local v2    # "mainSpeechView":Lqr;
    :cond_2
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070050

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 956
    .local v3, "shifting":I
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v1, v4}, Ladp;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 957
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ladp;->setOutsideTouchable(Z)V

    .line 958
    invoke-virtual {v2}, Lqr;->a()Lcom/iflytek/framework/browser/mic/MainSpeechView;

    move-result-object v4

    invoke-virtual {v2}, Lqr;->a()Lcom/iflytek/framework/browser/mic/MainSpeechView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/iflytek/framework/browser/mic/MainSpeechView;->getHeight()I

    move-result v5

    sub-int/2addr v5, v3

    invoke-virtual {v1, p1, v4, v5}, Ladp;->a(Ljava/lang/String;Landroid/view/View;I)V

    goto :goto_0
.end method


# virtual methods
.method public cacheScenceData(Lacf;)V
    .locals 0
    .param p1, "pScenceData"    # Lacf;

    .prologue
    .line 966
    iput-object p1, p0, Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl;->mScenceDataCache:Lacf;

    .line 967
    return-void
.end method

.method public getScenceDataCache()Lacf;
    .locals 1

    .prologue
    .line 971
    iget-object v0, p0, Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl;->mScenceDataCache:Lacf;

    return-object v0
.end method

.method public getSpeechIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 801
    iget-object v0, p0, Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl;->mScenceDataCache:Lacf;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl;->mScenceDataCache:Lacf;

    invoke-virtual {v0}, Lacf;->i()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 802
    iget-object v0, p0, Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl;->mScenceDataCache:Lacf;

    invoke-virtual {v0}, Lacf;->i()Landroid/content/Intent;

    move-result-object v0

    .line 804
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Labx;->getSpeechIntent()Landroid/content/Intent;

    move-result-object v0

    goto :goto_0
.end method

.method protected handleAfterPermission(Lcom/iflytek/yd/speech/ViaAsrResult;Lcom/iflytek/yd/speech/FilterResult;)V
    .locals 5
    .param p1, "asrResult"    # Lcom/iflytek/yd/speech/ViaAsrResult;
    .param p2, "filterResult"    # Lcom/iflytek/yd/speech/FilterResult;

    .prologue
    .line 845
    invoke-virtual {p2}, Lcom/iflytek/yd/speech/FilterResult;->getFocus()Ljava/lang/String;

    move-result-object v0

    .line 847
    .local v0, "focus":Ljava/lang/String;
    const-string/jumbo v3, "message"

    sget-object v4, Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl;->mContactFilterResult:Laau;

    invoke-virtual {v4}, Laau;->getChannel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "contacts"

    sget-object v4, Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl;->mContactFilterResult:Laau;

    .line 848
    invoke-virtual {v4}, Laau;->getFocus()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "send"

    sget-object v4, Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl;->mContactFilterResult:Laau;

    .line 849
    invoke-virtual {v4}, Laau;->getOperation()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 850
    const-string/jumbo v3, "DialBusinesshandlerImpl"

    const-string/jumbo v4, "change focus to message"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    const-string/jumbo v0, "message"

    .line 852
    invoke-static {v0}, Lcom/iflytek/framework/business/entities/BusinessTempData;->setCacheSpeechResultFocus(Ljava/lang/String;)V

    .line 855
    :cond_0
    invoke-virtual {p0}, Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl;->getScenceDataCache()Lacf;

    move-result-object v3

    invoke-virtual {p0, p1, p2, v3}, Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl;->transferBusiness(Lcom/iflytek/yd/speech/ViaAsrResult;Lcom/iflytek/yd/speech/FilterResult;Lacf;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 879
    :goto_0
    return-void

    .line 858
    :cond_1
    invoke-static {v0, p0}, Laby;->a(Ljava/lang/String;Lacp;)Lacj;

    move-result-object v2

    .line 859
    .local v2, "handler":Lacj;
    const/4 v1, 0x0

    .line 860
    .local v1, "handleSuccess":Z
    if-eqz v2, :cond_3

    .line 861
    invoke-virtual {p0}, Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl;->getScenceDataCache()Lacf;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 864
    invoke-virtual {v2, p1, p2}, Lacj;->a(Lcom/iflytek/yd/speech/ViaAsrResult;Lcom/iflytek/yd/speech/FilterResult;)Z

    move-result v1

    .line 867
    :cond_2
    if-nez v1, :cond_3

    .line 868
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl;->cacheScenceData(Lacf;)V

    .line 869
    invoke-virtual {v2, p1, p2}, Lacj;->a(Lcom/iflytek/yd/speech/ViaAsrResult;Lcom/iflytek/yd/speech/FilterResult;)Z

    move-result v1

    .line 873
    :cond_3
    if-nez v1, :cond_4

    .line 874
    invoke-virtual {p0}, Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl;->showNoResult()V

    goto :goto_0

    .line 876
    :cond_4
    invoke-static {v0}, Lcom/iflytek/framework/business/entities/BusinessTempData;->setCacheSpeechResultFocus(Ljava/lang/String;)V

    .line 877
    sget-object v3, Lcom/iflytek/framework/business/speech/InteractionScene;->dial:Lcom/iflytek/framework/business/speech/InteractionScene;

    invoke-static {v3}, Lcom/iflytek/framework/business/entities/BusinessTempData;->setInteractionScene(Lcom/iflytek/framework/business/speech/InteractionScene;)V

    goto :goto_0
.end method

.method public handleShortCutSpeechResult(Landroid/content/Context;Lcom/iflytek/yd/speech/ViaAsrResult;)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "result"    # Lcom/iflytek/yd/speech/ViaAsrResult;

    .prologue
    const/4 v1, 0x0

    .line 191
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_1

    .line 194
    :try_start_0
    const-string/jumbo v2, "android.permission.READ_PHONE_STATE"

    invoke-static {p1, v2}, Lpd;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "android.permission.READ_CONTACTS"

    .line 195
    invoke-static {p1, v2}, Lpd;->a(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_1

    .line 211
    :cond_0
    :goto_0
    return v1

    .line 198
    :catch_0
    move-exception v0

    .line 199
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "DialBusinesshandlerImpl"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 204
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    invoke-static {p1, p2}, Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl;->judgeAndDoDirectCallFromShortCutSpeech(Landroid/content/Context;Lcom/iflytek/yd/speech/ViaAsrResult;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 205
    const-string/jumbo v1, "DialBusinesshandlerImpl"

    const-string/jumbo v2, "MethidName :handleShortCutSpeechResult-info : DirectCall"

    invoke-static {v1, v2}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    const/4 v1, 0x1

    goto :goto_0

    .line 209
    :cond_2
    const-string/jumbo v2, "DialBusinesshandlerImpl"

    const-string/jumbo v3, "MethodName: handleShortCutSpeechResult-info: do nothing"

    invoke-static {v2, v3}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected initContactInteraction(Lcom/iflytek/yd/speech/ViaAsrResult;Lcom/iflytek/yd/speech/FilterResult;)V
    .locals 0
    .param p1, "asrResult"    # Lcom/iflytek/yd/speech/ViaAsrResult;
    .param p2, "filterResult"    # Lcom/iflytek/yd/speech/FilterResult;

    .prologue
    .line 302
    return-void
.end method

.method protected isCreateQuestionView()Z
    .locals 1

    .prologue
    .line 294
    const/4 v0, 0x0

    return v0
.end method

.method public onBeginningOfSpeech()V
    .locals 0

    .prologue
    .line 236
    return-void
.end method

.method protected onCancel()V
    .locals 4

    .prologue
    .line 326
    const-string/jumbo v2, "DialBusinesshandlerImpl"

    const-string/jumbo v3, "MethodName: onCancel"

    invoke-static {v2, v3}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    iget-object v2, p0, Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl;->mLastDeleteLogDialog:Landroid/app/Dialog;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl;->mLastDeleteLogDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 329
    iget-object v2, p0, Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl;->mLastDeleteLogDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 333
    :cond_0
    invoke-static {}, Lzt;->a()V

    .line 335
    invoke-virtual {p0}, Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl;->getScenceDataCache()Lacf;

    move-result-object v0

    .line 336
    .local v0, "currentScenceData":Lacf;
    if-eqz v0, :cond_1

    .line 337
    invoke-virtual {v0}, Lacf;->g()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p0}, Laby;->a(Ljava/lang/String;Lacp;)Lacj;

    move-result-object v1

    .line 338
    .local v1, "handler":Lacj;
    if-eqz v1, :cond_1

    .line 339
    sget-object v2, Lcom/iflytek/viafly/dial/business30/DialCancelReason;->cancel_local_business:Lcom/iflytek/viafly/dial/business30/DialCancelReason;

    invoke-virtual {v1, v2}, Lacj;->a(Lcom/iflytek/viafly/dial/business30/DialCancelReason;)V

    .line 343
    .end local v1    # "handler":Lacj;
    :cond_1
    invoke-virtual {p0}, Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl;->isTtsSpeaking()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 344
    invoke-virtual {p0}, Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl;->ttsStop()V

    .line 346
    :cond_2
    return-void
.end method

.method protected onClearBusiness()V
    .locals 0

    .prologue
    .line 795
    return-void
.end method

.method public onDataUpdated(Lcom/iflytek/framework/business/entities/UpdateDataType;)V
    .locals 4
    .param p1, "type"    # Lcom/iflytek/framework/business/entities/UpdateDataType;

    .prologue
    .line 216
    const-string/jumbo v1, "DialBusinesshandlerImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onDataUpdated type= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    sget-object v1, Lcom/iflytek/framework/business/entities/UpdateDataType;->call_log:Lcom/iflytek/framework/business/entities/UpdateDataType;

    if-ne v1, p1, :cond_0

    .line 218
    invoke-virtual {p0}, Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl;->getHandlerContext()Lcom/iflytek/framework/business/entities/HandleContext;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 219
    const-string/jumbo v1, "DialBusinesshandlerImpl"

    const-string/jumbo v2, "MethodName : onDataUpdated-info : reload call history|calllog|call log"

    invoke-static {v1, v2}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    invoke-virtual {p0}, Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl;->getHandlerContext()Lcom/iflytek/framework/business/entities/HandleContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iflytek/framework/business/entities/HandleContext;->getWidgetContainerInterface()Lcom/iflytek/framework/ui/container/WidgetContainerInterface;

    move-result-object v0

    check-cast v0, Lcom/iflytek/framework/browser/localControlView/OperationView;

    .line 222
    .local v0, "containerForMMP":Lcom/iflytek/framework/browser/localControlView/OperationView;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/iflytek/framework/browser/localControlView/OperationView;->getLocalBusinessView()Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 223
    invoke-virtual {v0}, Lcom/iflytek/framework/browser/localControlView/OperationView;->getLocalBusinessView()Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;

    move-result-object v1

    const-string/jumbo v2, "sub_tel_his.reLoadCallLog()"

    .line 224
    invoke-virtual {v1, v2}, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;->loadJavaScript(Ljava/lang/String;)V

    .line 228
    .end local v0    # "containerForMMP":Lcom/iflytek/framework/browser/localControlView/OperationView;
    :cond_0
    return-void
.end method

.method public onEndOfSpeech()V
    .locals 0

    .prologue
    .line 240
    return-void
.end method

.method protected onExec(Ljava/lang/String;Lorg/json/JSONArray;)Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;
    .locals 15
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "jsonArgs"    # Lorg/json/JSONArray;

    .prologue
    .line 460
    const-string/jumbo v10, "DialBusinesshandlerImpl"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "action:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    const-string/jumbo v10, "DialBusinesshandlerImpl"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "jsonArgs:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    invoke-virtual {p0}, Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 463
    .local v2, "context":Landroid/content/Context;
    move-object/from16 v1, p2

    .line 466
    .local v1, "args":Lorg/json/JSONArray;
    :try_start_0
    const-string/jumbo v10, "getTelCache"

    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 700
    :cond_0
    :goto_0
    const/4 v10, 0x0

    return-object v10

    .line 489
    :cond_1
    const-string/jumbo v10, "startCall"

    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 491
    invoke-static {v2}, Lwx;->a(Landroid/content/Context;)Lwx;

    move-result-object v10

    const-string/jumbo v11, "recent_contact_call"

    invoke-virtual {v10, v11}, Lwx;->a(Ljava/lang/String;)V

    .line 492
    const/4 v10, 0x0

    invoke-virtual {v1, v10}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 493
    .local v8, "tel":Ljava/lang/String;
    const/4 v10, 0x1

    invoke-virtual {v1, v10}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 494
    .local v4, "name":Ljava/lang/String;
    invoke-static {}, Laba;->a()Laba;

    move-result-object v10

    invoke-virtual {v10}, Laba;->b()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 495
    sget-object v10, Lcom/iflytek/viafly/dial/business30/DialCancelReason;->start_new_task:Lcom/iflytek/viafly/dial/business30/DialCancelReason;

    invoke-virtual {p0, v10}, Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl;->Cancel(Lcom/iflytek/viafly/dial/business30/DialCancelReason;)Z

    .line 497
    const-string/jumbo v10, "call"

    const/4 v11, 0x1

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v4, v12, v13

    const/4 v13, 0x1

    aput-object v8, v12, v13

    invoke-static {v2, v10, v11, v12}, Labz;->a(Landroid/content/Context;Ljava/lang/String;B[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 697
    .end local v4    # "name":Ljava/lang/String;
    .end local v8    # "tel":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 698
    .local v3, "e":Ljava/lang/Exception;
    const-string/jumbo v10, "DialBusinesshandlerImpl"

    const-string/jumbo v11, "callChannelHandler"

    invoke-static {v10, v11, v3}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 503
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v4    # "name":Ljava/lang/String;
    .restart local v8    # "tel":Ljava/lang/String;
    :cond_2
    :try_start_1
    invoke-static {}, Lgx;->a()Lgx;

    move-result-object v10

    invoke-virtual {v10, v8}, Lgx;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 512
    .end local v4    # "name":Ljava/lang/String;
    .end local v8    # "tel":Ljava/lang/String;
    :cond_3
    const-string/jumbo v10, "saveNumber"

    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 516
    if-eqz v1, :cond_0

    .line 517
    const/4 v10, 0x0

    invoke-virtual {v1, v10}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 518
    .restart local v8    # "tel":Ljava/lang/String;
    invoke-static {v2, v8}, Lzt;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 520
    .end local v8    # "tel":Ljava/lang/String;
    :cond_4
    const-string/jumbo v10, "deleteCallLog"

    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 530
    const-string/jumbo v10, "longPressCallLog"

    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 567
    const-string/jumbo v10, "regetContacts"

    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 571
    const-string/jumbo v10, "telseeMore"

    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 573
    invoke-static {}, Lgx;->a()Lgx;

    move-result-object v10

    invoke-virtual {v10}, Lgx;->b()V

    goto/16 :goto_0

    .line 574
    :cond_5
    const-string/jumbo v10, "seeAllContacts"

    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 575
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lazo;->b(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 577
    :cond_6
    const-string/jumbo v10, "markNumber"

    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 593
    const-string/jumbo v10, "updateCalllog"

    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 610
    const-string/jumbo v10, "startDirectoryAssistanceActivity"

    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 617
    const-string/jumbo v10, "opRecoSms"

    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 623
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lwx;->a(Landroid/content/Context;)Lwx;

    move-result-object v10

    const-string/jumbo v11, "recent_contact_send_msg"

    invoke-virtual {v10, v11}, Lwx;->a(Ljava/lang/String;)V

    .line 624
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/iflytek/yd/util/BroadCastSender;->getInstance(Landroid/content/Context;)Lcom/iflytek/yd/util/BroadCastSender;

    move-result-object v10

    const-string/jumbo v11, "com.iflytek.cmcc.broadcast_stop_wake"

    invoke-virtual {v10, v11}, Lcom/iflytek/yd/util/BroadCastSender;->sendBroadCast(Ljava/lang/String;)V

    .line 625
    const/4 v10, 0x0

    invoke-virtual {v1, v10}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 626
    .restart local v4    # "name":Ljava/lang/String;
    const/4 v10, 0x1

    invoke-virtual {v1, v10}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 627
    .restart local v8    # "tel":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "\u53d1\u77ed\u4fe1\u7ed9"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 628
    .local v7, "rawtext":Ljava/lang/String;
    const/4 v10, 0x1

    invoke-static {v10}, Labd;->b(Z)V

    .line 634
    sget-object v10, Lcom/iflytek/viafly/dial/business30/DialCancelReason;->start_new_task:Lcom/iflytek/viafly/dial/business30/DialCancelReason;

    invoke-virtual {p0, v10}, Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl;->Cancel(Lcom/iflytek/viafly/dial/business30/DialCancelReason;)Z

    .line 635
    invoke-virtual {p0}, Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl;->getContext()Landroid/content/Context;

    move-result-object v10

    const-string/jumbo v11, "action_send_message_to_special"

    const/4 v12, 0x1

    const/4 v13, 0x3

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v7, v13, v14

    const/4 v14, 0x1

    aput-object v4, v13, v14

    const/4 v14, 0x2

    aput-object v8, v13, v14

    invoke-static {v10, v11, v12, v13}, Lcom/iflytek/framework/business/speech/ManualSelectHandler;->selectHandle(Landroid/content/Context;Ljava/lang/String;B[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 640
    .end local v4    # "name":Ljava/lang/String;
    .end local v7    # "rawtext":Ljava/lang/String;
    .end local v8    # "tel":Ljava/lang/String;
    :cond_7
    const-string/jumbo v10, "sendBlessMessage"

    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 642
    iget-object v10, p0, Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl;->selectedName:[Ljava/lang/String;

    if-eqz v10, :cond_8

    iget-object v10, p0, Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl;->selectedName:[Ljava/lang/String;

    const/4 v11, 0x0

    aget-object v10, v10, v11

    if-eqz v10, :cond_8

    .line 643
    iget-object v10, p0, Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl;->selectedName:[Ljava/lang/String;

    const/4 v11, 0x0

    aget-object v4, v10, v11

    .line 647
    .restart local v4    # "name":Ljava/lang/String;
    :goto_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "\u70b9\u51fb\u9ea6\u514b\u98ce\u8bf4\uff1a\n\u201c\u53d1\u795d\u798f\u77ed\u4fe1\u7ed9"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "\u201d"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 648
    .local v9, "tips":Ljava/lang/String;
    invoke-direct {p0, v9}, Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl;->showSpeechTipsView(Ljava/lang/String;)V

    .line 650
    const/4 v10, 0x2

    invoke-static {v10}, Labb;->a(I)V

    goto/16 :goto_0

    .line 645
    .end local v4    # "name":Ljava/lang/String;
    .end local v9    # "tips":Ljava/lang/String;
    :cond_8
    const-string/jumbo v4, "\u5f20\u4e09"

    .restart local v4    # "name":Ljava/lang/String;
    goto :goto_1

    .line 652
    .end local v4    # "name":Ljava/lang/String;
    :cond_9
    const-string/jumbo v10, "sendContact"

    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 654
    iget-object v10, p0, Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl;->selectedName:[Ljava/lang/String;

    if-eqz v10, :cond_a

    iget-object v10, p0, Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl;->selectedName:[Ljava/lang/String;

    const/4 v11, 0x0

    aget-object v10, v10, v11

    if-eqz v10, :cond_a

    iget-object v10, p0, Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl;->selectedName:[Ljava/lang/String;

    const/4 v11, 0x1

    aget-object v10, v10, v11

    if-eqz v10, :cond_a

    .line 655
    iget-object v10, p0, Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl;->selectedName:[Ljava/lang/String;

    const/4 v11, 0x1

    aget-object v5, v10, v11

    .line 656
    .local v5, "name1":Ljava/lang/String;
    iget-object v10, p0, Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl;->selectedName:[Ljava/lang/String;

    const/4 v11, 0x0

    aget-object v6, v10, v11

    .line 661
    .local v6, "name2":Ljava/lang/String;
    :goto_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "\u70b9\u51fb\u9ea6\u514b\u98ce\u8bf4\uff1a\n\u201c\u628a"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "\u7684\u53f7\u7801\u53d1\u7ed9"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "\u201d"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 662
    .restart local v9    # "tips":Ljava/lang/String;
    invoke-direct {p0, v9}, Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl;->showSpeechTipsView(Ljava/lang/String;)V

    .line 664
    const/4 v10, 0x0

    invoke-static {v10}, Labb;->a(I)V

    goto/16 :goto_0

    .line 658
    .end local v5    # "name1":Ljava/lang/String;
    .end local v6    # "name2":Ljava/lang/String;
    .end local v9    # "tips":Ljava/lang/String;
    :cond_a
    const-string/jumbo v5, "\u5f20\u4e09"

    .line 659
    .restart local v5    # "name1":Ljava/lang/String;
    const-string/jumbo v6, "\u674e\u56db"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .restart local v6    # "name2":Ljava/lang/String;
    goto :goto_2
.end method

.method protected onFail(Lcom/iflytek/yd/speech/ViaAsrResult;Lcom/iflytek/yd/speech/FilterResult;)Z
    .locals 1
    .param p1, "asrResult"    # Lcom/iflytek/yd/speech/ViaAsrResult;
    .param p2, "filterResult"    # Lcom/iflytek/yd/speech/FilterResult;

    .prologue
    .line 789
    const/4 v0, 0x0

    return v0
.end method

.method protected onShow(Lcom/iflytek/framework/business/entities/HandleContext;)V
    .locals 4
    .param p1, "context"    # Lcom/iflytek/framework/business/entities/HandleContext;

    .prologue
    .line 315
    invoke-virtual {p1}, Lcom/iflytek/framework/business/entities/HandleContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lhe;->a(Landroid/content/Context;)Lhe;

    move-result-object v1

    invoke-virtual {v1}, Lhe;->d()Ljava/util/HashSet;

    move-result-object v0

    .line 316
    .local v0, "contactItems":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/iflytek/base/contacts/entities/ContactItem;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 318
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-ge v1, v2, :cond_1

    .line 319
    invoke-static {}, Laqv;->a()Laqv;

    move-result-object v1

    invoke-virtual {p1}, Lcom/iflytek/framework/business/entities/HandleContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "contact"

    invoke-virtual {v1, v2, v3}, Laqv;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 322
    :cond_1
    return-void
.end method

.method public onSpeechError(I)V
    .locals 0
    .param p1, "errorCode"    # I

    .prologue
    .line 232
    return-void
.end method

.method protected onSuccess(Lcom/iflytek/yd/speech/ViaAsrResult;Lcom/iflytek/yd/speech/FilterResult;)V
    .locals 3
    .param p1, "asrResult"    # Lcom/iflytek/yd/speech/ViaAsrResult;
    .param p2, "filterResult"    # Lcom/iflytek/yd/speech/FilterResult;

    .prologue
    .line 809
    invoke-super {p0, p1, p2}, Labx;->onSuccess(Lcom/iflytek/yd/speech/ViaAsrResult;Lcom/iflytek/yd/speech/FilterResult;)V

    .line 810
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-ge v1, v2, :cond_0

    .line 811
    invoke-virtual {p0, p1, p2}, Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl;->handleAfterPermission(Lcom/iflytek/yd/speech/ViaAsrResult;Lcom/iflytek/yd/speech/FilterResult;)V

    .line 840
    :goto_0
    return-void

    .line 814
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 815
    .local v0, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v1, "android.permission.READ_CONTACTS"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 816
    const-string/jumbo v1, "android.permission.READ_PHONE_STATE"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 817
    const-string/jumbo v1, "android.permission.SEND_SMS"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 818
    invoke-virtual {p0}, Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl;->getHandlerContext()Lcom/iflytek/framework/business/entities/HandleContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iflytek/framework/business/entities/HandleContext;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl$3;

    invoke-direct {v2, p0, p1, p2}, Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl$3;-><init>(Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl;Lcom/iflytek/yd/speech/ViaAsrResult;Lcom/iflytek/yd/speech/FilterResult;)V

    invoke-static {v1, v0, v2}, Lpd;->a(Landroid/content/Context;Ljava/util/List;Lpj;)V

    goto :goto_0
.end method

.method protected varargs onSystemEventCallback(Lcom/iflytek/framework/business/entities/SystemEvent;[Ljava/lang/Object;)V
    .locals 4
    .param p1, "systemEvent"    # Lcom/iflytek/framework/business/entities/SystemEvent;
    .param p2, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 411
    iget-object v3, p0, Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl;->mLastDeleteLogDialog:Landroid/app/Dialog;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl;->mLastDeleteLogDialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 412
    sget-object v3, Lcom/iflytek/framework/business/entities/SystemEvent;->incoming_call:Lcom/iflytek/framework/business/entities/SystemEvent;

    if-eq v3, p1, :cond_0

    sget-object v3, Lcom/iflytek/framework/business/entities/SystemEvent;->incoming_schedule:Lcom/iflytek/framework/business/entities/SystemEvent;

    if-eq v3, p1, :cond_0

    sget-object v3, Lcom/iflytek/framework/business/entities/SystemEvent;->screen_on:Lcom/iflytek/framework/business/entities/SystemEvent;

    if-eq v3, p1, :cond_0

    sget-object v3, Lcom/iflytek/framework/business/entities/SystemEvent;->screen_off:Lcom/iflytek/framework/business/entities/SystemEvent;

    if-ne v3, p1, :cond_1

    .line 416
    :cond_0
    iget-object v3, p0, Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl;->mLastDeleteLogDialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->dismiss()V

    .line 421
    :cond_1
    sget-object v3, Lcom/iflytek/framework/business/entities/SystemEvent;->incoming_call:Lcom/iflytek/framework/business/entities/SystemEvent;

    if-eq v3, p1, :cond_2

    sget-object v3, Lcom/iflytek/framework/business/entities/SystemEvent;->incoming_schedule:Lcom/iflytek/framework/business/entities/SystemEvent;

    if-eq v3, p1, :cond_2

    sget-object v3, Lcom/iflytek/framework/business/entities/SystemEvent;->screen_on:Lcom/iflytek/framework/business/entities/SystemEvent;

    if-ne v3, p1, :cond_3

    .line 424
    :cond_2
    invoke-static {}, Lzt;->a()V

    .line 428
    :cond_3
    invoke-virtual {p0}, Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl;->isTtsSpeaking()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 429
    sget-object v3, Lcom/iflytek/framework/business/entities/SystemEvent;->incoming_call:Lcom/iflytek/framework/business/entities/SystemEvent;

    if-eq v3, p1, :cond_4

    sget-object v3, Lcom/iflytek/framework/business/entities/SystemEvent;->incoming_schedule:Lcom/iflytek/framework/business/entities/SystemEvent;

    if-eq v3, p1, :cond_4

    sget-object v3, Lcom/iflytek/framework/business/entities/SystemEvent;->screen_on:Lcom/iflytek/framework/business/entities/SystemEvent;

    if-eq v3, p1, :cond_4

    sget-object v3, Lcom/iflytek/framework/business/entities/SystemEvent;->screen_off:Lcom/iflytek/framework/business/entities/SystemEvent;

    if-ne v3, p1, :cond_5

    .line 433
    :cond_4
    invoke-virtual {p0}, Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl;->ttsStop()V

    .line 438
    :cond_5
    invoke-virtual {p0}, Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl;->getScenceDataCache()Lacf;

    move-result-object v1

    .line 439
    .local v1, "currentScenceData":Lacf;
    if-eqz v1, :cond_8

    .line 440
    invoke-virtual {v1}, Lacf;->g()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p0}, Laby;->a(Ljava/lang/String;Lacp;)Lacj;

    move-result-object v2

    .line 441
    .local v2, "handler":Lacj;
    if-eqz v2, :cond_8

    .line 443
    const/4 v0, 0x0

    .line 444
    .local v0, "cancelReason":Lcom/iflytek/viafly/dial/business30/DialCancelReason;
    sget-object v3, Lcom/iflytek/framework/business/entities/SystemEvent;->incoming_call:Lcom/iflytek/framework/business/entities/SystemEvent;

    if-eq v3, p1, :cond_6

    sget-object v3, Lcom/iflytek/framework/business/entities/SystemEvent;->incoming_schedule:Lcom/iflytek/framework/business/entities/SystemEvent;

    if-eq v3, p1, :cond_6

    sget-object v3, Lcom/iflytek/framework/business/entities/SystemEvent;->screen_on:Lcom/iflytek/framework/business/entities/SystemEvent;

    if-eq v3, p1, :cond_6

    sget-object v3, Lcom/iflytek/framework/business/entities/SystemEvent;->screen_off:Lcom/iflytek/framework/business/entities/SystemEvent;

    if-ne v3, p1, :cond_7

    .line 448
    :cond_6
    sget-object v0, Lcom/iflytek/viafly/dial/business30/DialCancelReason;->activity_stop:Lcom/iflytek/viafly/dial/business30/DialCancelReason;

    .line 450
    :cond_7
    if-eqz v0, :cond_8

    .line 451
    invoke-virtual {v2, v0}, Lacj;->a(Lcom/iflytek/viafly/dial/business30/DialCancelReason;)V

    .line 456
    .end local v0    # "cancelReason":Lcom/iflytek/viafly/dial/business30/DialCancelReason;
    .end local v2    # "handler":Lacj;
    :cond_8
    return-void
.end method

.method public onTtsPlayBegin()V
    .locals 0

    .prologue
    .line 250
    return-void
.end method

.method public onTtsPlayComplete(I)V
    .locals 4
    .param p1, "errorCode"    # I

    .prologue
    .line 256
    iget-object v0, p0, Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl;->mSpeakCallBack:Lacs;

    if-eqz v0, :cond_1

    .line 257
    iget-object v0, p0, Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl;->mSpeakCallBack:Lacs;

    invoke-interface {v0}, Lacs;->a()V

    .line 270
    :cond_0
    :goto_0
    return-void

    .line 260
    :cond_1
    sget-object v0, Lcom/iflytek/framework/business/speech/InteractionScene;->normal:Lcom/iflytek/framework/business/speech/InteractionScene;

    invoke-static {v0}, Lcom/iflytek/framework/business/entities/BusinessTempData;->setInteractionScene(Lcom/iflytek/framework/business/speech/InteractionScene;)V

    .line 261
    invoke-static {}, Lagv;->k()Lahp;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 262
    invoke-static {}, Lagv;->k()Lahp;

    move-result-object v0

    invoke-virtual {v0}, Lahp;->t()Lcom/iflytek/viafly/Home$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 263
    invoke-static {}, Lagv;->k()Lahp;

    move-result-object v0

    invoke-virtual {v0}, Lahp;->t()Lcom/iflytek/viafly/Home$b;

    move-result-object v0

    iget-boolean v0, v0, Lcom/iflytek/viafly/Home$b;->b:Z

    if-nez v0, :cond_0

    .line 264
    invoke-static {}, Lagv;->j()Lcom/iflytek/viafly/homehelper/HomeWakeupHelper;

    move-result-object v0

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v2, v3}, Lcom/iflytek/viafly/homehelper/HomeWakeupHelper;->a(J)V

    goto :goto_0
.end method

.method public onTtsPlayInterrupt()V
    .locals 0

    .prologue
    .line 275
    return-void
.end method

.method public onTtsPlayPause()V
    .locals 0

    .prologue
    .line 285
    return-void
.end method

.method public onTtsPlayProgress(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 280
    return-void
.end method

.method public onTtsPlayResume()V
    .locals 0

    .prologue
    .line 290
    return-void
.end method

.method protected varargs onUIEventCallback(Lcom/iflytek/framework/business/entities/UIEvent;[Ljava/lang/Object;)Z
    .locals 4
    .param p1, "businessEvent"    # Lcom/iflytek/framework/business/entities/UIEvent;
    .param p2, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 351
    iget-object v3, p0, Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl;->mLastDeleteLogDialog:Landroid/app/Dialog;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl;->mLastDeleteLogDialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 352
    sget-object v3, Lcom/iflytek/framework/business/entities/UIEvent;->activity_stop:Lcom/iflytek/framework/business/entities/UIEvent;

    if-eq v3, p1, :cond_0

    sget-object v3, Lcom/iflytek/framework/business/entities/UIEvent;->activity_pause:Lcom/iflytek/framework/business/entities/UIEvent;

    if-ne v3, p1, :cond_1

    .line 354
    :cond_0
    iget-object v3, p0, Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl;->mLastDeleteLogDialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->dismiss()V

    .line 359
    :cond_1
    invoke-virtual {p0}, Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl;->isTtsSpeaking()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 360
    sget-object v3, Lcom/iflytek/framework/business/entities/UIEvent;->activity_stop:Lcom/iflytek/framework/business/entities/UIEvent;

    if-eq v3, p1, :cond_2

    sget-object v3, Lcom/iflytek/framework/business/entities/UIEvent;->speech_button_down:Lcom/iflytek/framework/business/entities/UIEvent;

    if-eq v3, p1, :cond_2

    sget-object v3, Lcom/iflytek/framework/business/entities/UIEvent;->activity_pause:Lcom/iflytek/framework/business/entities/UIEvent;

    if-ne v3, p1, :cond_3

    .line 363
    :cond_2
    invoke-virtual {p0}, Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl;->ttsStop()V

    .line 368
    :cond_3
    sget-object v3, Lcom/iflytek/framework/business/entities/UIEvent;->activity_resume:Lcom/iflytek/framework/business/entities/UIEvent;

    if-ne v3, p1, :cond_4

    .line 371
    invoke-direct {p0}, Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl;->postRefreshRecommendedView()V

    .line 375
    :cond_4
    sget-object v3, Lcom/iflytek/framework/business/entities/UIEvent;->activity_stop:Lcom/iflytek/framework/business/entities/UIEvent;

    if-ne v3, p1, :cond_5

    .line 376
    invoke-static {}, Lzt;->a()V

    .line 380
    :cond_5
    invoke-virtual {p0}, Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl;->getScenceDataCache()Lacf;

    move-result-object v1

    .line 381
    .local v1, "currentScenceData":Lacf;
    if-eqz v1, :cond_8

    .line 382
    invoke-virtual {v1}, Lacf;->g()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p0}, Laby;->a(Ljava/lang/String;Lacp;)Lacj;

    move-result-object v2

    .line 383
    .local v2, "handler":Lacj;
    if-eqz v2, :cond_8

    .line 384
    const/4 v0, 0x0

    .line 385
    .local v0, "cancelReason":Lcom/iflytek/viafly/dial/business30/DialCancelReason;
    sget-object v3, Lcom/iflytek/framework/business/entities/UIEvent;->activity_stop:Lcom/iflytek/framework/business/entities/UIEvent;

    if-eq v3, p1, :cond_6

    sget-object v3, Lcom/iflytek/framework/business/entities/UIEvent;->activity_pause:Lcom/iflytek/framework/business/entities/UIEvent;

    if-ne v3, p1, :cond_9

    .line 387
    :cond_6
    sget-object v0, Lcom/iflytek/viafly/dial/business30/DialCancelReason;->activity_stop:Lcom/iflytek/viafly/dial/business30/DialCancelReason;

    .line 399
    :cond_7
    :goto_0
    if-eqz v0, :cond_8

    .line 400
    invoke-virtual {v2, v0}, Lacj;->a(Lcom/iflytek/viafly/dial/business30/DialCancelReason;)V

    .line 405
    .end local v0    # "cancelReason":Lcom/iflytek/viafly/dial/business30/DialCancelReason;
    .end local v2    # "handler":Lacj;
    :cond_8
    const/4 v3, 0x0

    return v3

    .line 388
    .restart local v0    # "cancelReason":Lcom/iflytek/viafly/dial/business30/DialCancelReason;
    .restart local v2    # "handler":Lacj;
    :cond_9
    sget-object v3, Lcom/iflytek/framework/business/entities/UIEvent;->speech_button_down:Lcom/iflytek/framework/business/entities/UIEvent;

    if-ne v3, p1, :cond_a

    .line 389
    sget-object v0, Lcom/iflytek/viafly/dial/business30/DialCancelReason;->speech_button_down:Lcom/iflytek/viafly/dial/business30/DialCancelReason;

    goto :goto_0

    .line 390
    :cond_a
    sget-object v3, Lcom/iflytek/framework/business/entities/UIEvent;->activity_destory:Lcom/iflytek/framework/business/entities/UIEvent;

    if-ne v3, p1, :cond_b

    .line 391
    sget-object v0, Lcom/iflytek/viafly/dial/business30/DialCancelReason;->activity_destory:Lcom/iflytek/viafly/dial/business30/DialCancelReason;

    goto :goto_0

    .line 392
    :cond_b
    sget-object v3, Lcom/iflytek/framework/business/entities/UIEvent;->activity_for_result:Lcom/iflytek/framework/business/entities/UIEvent;

    if-ne v3, p1, :cond_c

    .line 393
    sget-object v0, Lcom/iflytek/viafly/dial/business30/DialCancelReason;->activity_for_result:Lcom/iflytek/viafly/dial/business30/DialCancelReason;

    goto :goto_0

    .line 394
    :cond_c
    sget-object v3, Lcom/iflytek/framework/business/entities/UIEvent;->show_local_business:Lcom/iflytek/framework/business/entities/UIEvent;

    if-ne v3, p1, :cond_d

    .line 395
    sget-object v0, Lcom/iflytek/viafly/dial/business30/DialCancelReason;->show_local_business:Lcom/iflytek/viafly/dial/business30/DialCancelReason;

    goto :goto_0

    .line 396
    :cond_d
    sget-object v3, Lcom/iflytek/framework/business/entities/UIEvent;->cancel_local_business:Lcom/iflytek/framework/business/entities/UIEvent;

    if-ne v3, p1, :cond_7

    .line 397
    sget-object v0, Lcom/iflytek/viafly/dial/business30/DialCancelReason;->cancel_local_business:Lcom/iflytek/viafly/dial/business30/DialCancelReason;

    goto :goto_0
.end method

.method public showNoResult()V
    .locals 15

    .prologue
    const/4 v7, 0x0

    const-wide/16 v4, 0x12c

    const/4 v3, 0x0

    .line 990
    sget-object v1, Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl;->mContactFilterResult:Laau;

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl;->createAnswerView(Lcom/iflytek/yd/speech/FilterResult;)Lcom/iflytek/viafly/dialog/WidgetViaFlyAnswerView;

    move-result-object v0

    .line 992
    .local v0, "answerView":Lcom/iflytek/viafly/dialog/WidgetViaFlyAnswerView;
    const/4 v13, 0x0

    .line 993
    .local v13, "name":Ljava/lang/String;
    sget-object v1, Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl;->mContactFilterResult:Laau;

    invoke-virtual {v1}, Laau;->c()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl;->mContactFilterResult:Laau;

    .line 994
    invoke-virtual {v1}, Laau;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 995
    sget-object v1, Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl;->mContactFilterResult:Laau;

    invoke-virtual {v1}, Laau;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    .end local v13    # "name":Ljava/lang/String;
    check-cast v13, Ljava/lang/String;

    .line 998
    .restart local v13    # "name":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 999
    invoke-static {}, Lagv;->c()Lcom/iflytek/viafly/HomeRootView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iflytek/viafly/HomeRootView;->getMicController()Lqr;

    move-result-object v2

    invoke-virtual {v2}, Lqr;->d()Z

    move-result v2

    .line 997
    invoke-static {v1, v2, v13}, Lact;->a(Landroid/content/Context;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1002
    .local v12, "content":Ljava/lang/String;
    invoke-static {v12}, Lpz;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1003
    .local v14, "text":Ljava/lang/String;
    invoke-virtual {v0, v14}, Lcom/iflytek/viafly/dialog/WidgetViaFlyAnswerView;->a(Ljava/lang/String;)V

    .line 1004
    invoke-virtual {p0}, Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl;->isTextInputResult()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1006
    invoke-virtual {p0, v0, v4, v5}, Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl;->addDisplayComponent(Lcom/iflytek/framework/ui/DisplayComponent;J)V

    .line 1021
    :goto_0
    const-string/jumbo v6, "findContactFail"

    .line 1022
    .local v6, "object":Ljava/lang/String;
    const-string/jumbo v2, "message"

    sget-object v4, Lcom/iflytek/framework/business/speech/InteractionScene;->normal:Lcom/iflytek/framework/business/speech/InteractionScene;

    move-object v5, v3

    move-object v8, v3

    move-object v9, v3

    move-object v10, v3

    move-object v11, v3

    invoke-static/range {v2 .. v11}, Laay;->a(Ljava/lang/String;Ljava/util/List;Lcom/iflytek/framework/business/speech/InteractionScene;[Ljava/lang/String;Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/util/List;)V

    .line 1024
    return-void

    .line 1010
    .end local v6    # "object":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0, v0, v4, v5}, Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl;->addDisplayComponent(Lcom/iflytek/framework/ui/DisplayComponent;J)V

    .line 1011
    invoke-static {v12}, Lpz;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v6, Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl$4;

    invoke-direct {v6, p0}, Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl$4;-><init>(Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl;)V

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl;->speakTtsWithCallBack(Ljava/lang/String;Ljava/util/HashMap;JLacs;)V

    goto :goto_0
.end method

.method public speakTts(Ljava/lang/String;Ljava/util/HashMap;J)V
    .locals 1
    .param p1, "content"    # Ljava/lang/String;
    .param p3, "delayedTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 177
    .local p2, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl;->mSpeakCallBack:Lacs;

    .line 178
    invoke-super {p0, p1, p2, p3, p4}, Labx;->speakTts(Ljava/lang/String;Ljava/util/HashMap;J)V

    .line 179
    return-void
.end method

.method public speakTtsWithCallBack(Ljava/lang/String;Ljava/util/HashMap;JLacs;)V
    .locals 1
    .param p1, "content"    # Ljava/lang/String;
    .param p3, "delayedTime"    # J
    .param p5, "pSpeakCallBack"    # Lacs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J",
            "Lacs;",
            ")V"
        }
    .end annotation

    .prologue
    .line 184
    .local p2, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p5, p0, Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl;->mSpeakCallBack:Lacs;

    .line 185
    invoke-super {p0, p1, p2, p3, p4}, Labx;->speakTts(Ljava/lang/String;Ljava/util/HashMap;J)V

    .line 186
    return-void
.end method

.method public transferBusiness(Lcom/iflytek/yd/speech/ViaAsrResult;Lcom/iflytek/yd/speech/FilterResult;Lacf;)Z
    .locals 16
    .param p1, "pRecognizerResult"    # Lcom/iflytek/yd/speech/ViaAsrResult;
    .param p2, "pFilterResult"    # Lcom/iflytek/yd/speech/FilterResult;
    .param p3, "pLastoperationDataInDial"    # Lacf;

    .prologue
    .line 1034
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1035
    :cond_0
    const/4 v10, 0x0

    .line 1093
    :goto_0
    return v10

    .line 1037
    :cond_1
    move-object/from16 v0, p2

    instance-of v10, v0, Laau;

    if-nez v10, :cond_2

    .line 1038
    const/4 v10, 0x0

    goto :goto_0

    .line 1040
    :cond_2
    const-string/jumbo v10, "contacts"

    invoke-virtual/range {p1 .. p1}, Lcom/iflytek/yd/speech/ViaAsrResult;->getFocus()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 1041
    const/4 v10, 0x0

    goto :goto_0

    .line 1043
    :cond_3
    if-eqz p3, :cond_4

    move-object/from16 v0, p3

    instance-of v10, v0, Lace;

    if-nez v10, :cond_5

    .line 1044
    :cond_4
    const/4 v10, 0x0

    goto :goto_0

    .line 1047
    :cond_5
    invoke-virtual/range {p3 .. p3}, Lacf;->g()Ljava/lang/String;

    move-result-object v1

    .line 1048
    .local v1, "cachefocus":Ljava/lang/String;
    const-string/jumbo v10, "telephone"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    const-string/jumbo v10, "message"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    .line 1049
    const/4 v10, 0x0

    goto :goto_0

    :cond_6
    move-object/from16 v8, p3

    .line 1051
    check-cast v8, Lace;

    .line 1052
    .local v8, "lastOperationData":Lace;
    invoke-virtual {v8}, Lace;->c()Ljava/util/HashMap;

    move-result-object v3

    .line 1053
    .local v3, "contactHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/iflytek/framework/business/speech/ResultGrammarData;>;"
    if-nez v3, :cond_b

    .line 1055
    invoke-virtual {v8}, Lace;->h()I

    move-result v9

    .local v9, "scenceState":I
    move-object/from16 v2, p2

    .line 1056
    check-cast v2, Laau;

    .line 1057
    .local v2, "contactFilterResult":Laau;
    invoke-virtual {v2}, Laau;->c()Ljava/util/List;

    move-result-object v10

    if-eqz v10, :cond_7

    invoke-virtual {v2}, Laau;->c()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-nez v10, :cond_8

    .line 1058
    :cond_7
    const/4 v10, 0x0

    goto :goto_0

    .line 1060
    :cond_8
    const/16 v10, 0x130

    if-ne v10, v9, :cond_9

    .line 1061
    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl;->getContext()Landroid/content/Context;

    move-result-object v10

    const-string/jumbo v11, "call_simple"

    .line 1063
    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl;->getAsrResult()Lcom/iflytek/yd/speech/ViaAsrResult;

    move-result-object v12

    invoke-virtual {v12}, Lcom/iflytek/yd/speech/ViaAsrResult;->getTextSearchMode()B

    move-result v12

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-virtual {v2}, Laau;->getRawText()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    invoke-virtual {v2}, Laau;->c()Ljava/util/List;

    move-result-object v15

    aput-object v15, v13, v14

    .line 1061
    invoke-static {v10, v11, v12, v13}, Labz;->a(Landroid/content/Context;Ljava/lang/String;B[Ljava/lang/Object;)V

    .line 1064
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 1065
    :cond_9
    const/16 v10, 0x230

    if-ne v10, v9, :cond_a

    .line 1066
    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl;->getContext()Landroid/content/Context;

    move-result-object v10

    const-string/jumbo v11, "message_simple"

    .line 1068
    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl;->getAsrResult()Lcom/iflytek/yd/speech/ViaAsrResult;

    move-result-object v12

    invoke-virtual {v12}, Lcom/iflytek/yd/speech/ViaAsrResult;->getTextSearchMode()B

    move-result v12

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-virtual {v2}, Laau;->getRawText()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    invoke-virtual {v2}, Laau;->c()Ljava/util/List;

    move-result-object v15

    aput-object v15, v13, v14

    .line 1066
    invoke-static {v10, v11, v12, v13}, Labz;->a(Landroid/content/Context;Ljava/lang/String;B[Ljava/lang/Object;)V

    .line 1069
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 1071
    :cond_a
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 1073
    .end local v2    # "contactFilterResult":Laau;
    .end local v9    # "scenceState":I
    :cond_b
    invoke-virtual/range {p1 .. p1}, Lcom/iflytek/yd/speech/ViaAsrResult;->getContent()Ljava/lang/String;

    move-result-object v4

    .line 1074
    .local v4, "content":Ljava/lang/String;
    const-string/jumbo v10, "\u3002"

    const-string/jumbo v11, ""

    invoke-virtual {v4, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 1075
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 1076
    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl;->getContext()Landroid/content/Context;

    move-result-object v10

    const-string/jumbo v11, "select_contact_name"

    .line 1078
    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl;->getAsrResult()Lcom/iflytek/yd/speech/ViaAsrResult;

    move-result-object v12

    invoke-virtual {v12}, Lcom/iflytek/yd/speech/ViaAsrResult;->getTextSearchMode()B

    move-result v12

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/iflytek/yd/speech/ViaAsrResult;->getContent()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    .line 1076
    invoke-static {v10, v11, v12, v13}, Labz;->a(Landroid/content/Context;Ljava/lang/String;B[Ljava/lang/Object;)V

    .line 1079
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 1081
    :cond_c
    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 1082
    .local v6, "iter":Ljava/util/Iterator;
    :cond_d
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_e

    .line 1083
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 1084
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/iflytek/framework/business/speech/ResultGrammarData;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1085
    .local v7, "key":Ljava/lang/String;
    invoke-virtual {v7, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 1086
    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl;->getContext()Landroid/content/Context;

    move-result-object v10

    const-string/jumbo v11, "select_contact_name"

    .line 1088
    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl;->getAsrResult()Lcom/iflytek/yd/speech/ViaAsrResult;

    move-result-object v12

    invoke-virtual {v12}, Lcom/iflytek/yd/speech/ViaAsrResult;->getTextSearchMode()B

    move-result v12

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v7, v13, v14

    .line 1086
    invoke-static {v10, v11, v12, v13}, Labz;->a(Landroid/content/Context;Ljava/lang/String;B[Ljava/lang/Object;)V

    .line 1089
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 1093
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/iflytek/framework/business/speech/ResultGrammarData;>;"
    .end local v7    # "key":Ljava/lang/String;
    :cond_e
    const/4 v10, 0x0

    goto/16 :goto_0
.end method
