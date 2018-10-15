.class public final enum Lcom/iflytek/viafly/blc/log/entities/OpEntryType;
.super Ljava/lang/Enum;
.source "OpEntryType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/iflytek/viafly/blc/log/entities/OpEntryType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

.field public static final enum alarm_new_dlg:Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

.field public static final enum bill_notify_content_refresh:Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

.field public static final enum bill_notify_content_to_detail:Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

.field public static final enum bill_notify_to_setting:Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

.field public static final enum bluetooth_wake:Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

.field public static final enum broadcast_float_window_show:Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

.field public static final enum call_sms_notifiaction:Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

.field public static final enum carmode_click_close_notification_bar:Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

.field public static final enum carmode_statechange_notification_bar:Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

.field public static final enum desktop_lx_shortcut:Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

.field public static final enum download_notification:Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

.field public static final enum handle_missed_incoming_call:Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

.field public static final enum home:Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

.field public static final enum incoming_call_float_window:Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

.field public static final enum incoming_call_tts:Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

.field public static final enum long_press_home:Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

.field public static final enum mic_notify_to_home:Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

.field public static final enum mic_notify_to_setting:Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

.field public static final enum mic_notify_to_sp_dlg:Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

.field public static final enum notice_notification_bar:Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

.field public static final enum notice_pop_windows:Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

.field public static final enum outgoing_call_float_window:Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

.field public static final enum schedule_trigger:Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

.field public static final enum search:Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

.field public static final enum shortcut:Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

.field public static final enum shortcut_codescan:Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

.field public static final enum smart_float_air_pollution_click:Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

.field public static final enum smart_float_bad_weather_click:Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

.field public static final enum smart_float_window_cooling_click:Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

.field public static final enum smart_float_window_holiday_click:Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

.field public static final enum smart_float_window_hot_event_click:Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

.field public static final enum smart_float_window_traffic_click:Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

.field public static final enum smart_float_window_traffic_daily_click:Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

.field public static final enum smart_float_window_train_click:Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

.field public static final enum sms_contact_save:Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

.field public static final enum sms_content_dialog_show:Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

.field public static final enum speech_wake:Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

.field public static final enum version_update:Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

.field public static final enum viafly_dial:Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

.field public static final enum widget:Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

.field public static final enum widget_call:Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

.field public static final enum widget_mic:Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

.field public static final enum widget_sms:Lcom/iflytek/viafly/blc/log/entities/OpEntryType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 10
    new-instance v0, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

    const-string/jumbo v1, "home"

    invoke-direct {v0, v1, v3}, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;->home:Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

    .line 13
    new-instance v0, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

    const-string/jumbo v1, "widget"

    invoke-direct {v0, v1, v4}, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;->widget:Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

    .line 16
    new-instance v0, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

    const-string/jumbo v1, "widget_mic"

    invoke-direct {v0, v1, v5}, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;->widget_mic:Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

    .line 19
    new-instance v0, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

    const-string/jumbo v1, "widget_call"

    invoke-direct {v0, v1, v6}, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;->widget_call:Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

    .line 22
    new-instance v0, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

    const-string/jumbo v1, "widget_sms"

    invoke-direct {v0, v1, v7}, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;->widget_sms:Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

    .line 25
    new-instance v0, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

    const-string/jumbo v1, "shortcut"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;->shortcut:Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

    .line 28
    new-instance v0, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

    const-string/jumbo v1, "search"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;->search:Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

    .line 31
    new-instance v0, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

    const-string/jumbo v1, "notice_notification_bar"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;->notice_notification_bar:Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

    .line 34
    new-instance v0, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

    const-string/jumbo v1, "notice_pop_windows"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;->notice_pop_windows:Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

    .line 37
    new-instance v0, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

    const-string/jumbo v1, "speech_wake"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;->speech_wake:Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

    .line 40
    new-instance v0, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

    const-string/jumbo v1, "bluetooth_wake"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;->bluetooth_wake:Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

    .line 43
    new-instance v0, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

    const-string/jumbo v1, "call_sms_notifiaction"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;->call_sms_notifiaction:Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

    .line 46
    new-instance v0, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

    const-string/jumbo v1, "download_notification"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;->download_notification:Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

    .line 49
    new-instance v0, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

    const-string/jumbo v1, "long_press_home"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;->long_press_home:Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

    .line 54
    new-instance v0, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

    const-string/jumbo v1, "smart_float_bad_weather_click"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;->smart_float_bad_weather_click:Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

    .line 56
    new-instance v0, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

    const-string/jumbo v1, "smart_float_window_cooling_click"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;->smart_float_window_cooling_click:Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

    .line 58
    new-instance v0, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

    const-string/jumbo v1, "smart_float_air_pollution_click"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;->smart_float_air_pollution_click:Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

    .line 60
    new-instance v0, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

    const-string/jumbo v1, "smart_float_window_train_click"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;->smart_float_window_train_click:Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

    .line 62
    new-instance v0, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

    const-string/jumbo v1, "smart_float_window_holiday_click"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;->smart_float_window_holiday_click:Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

    .line 66
    new-instance v0, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

    const-string/jumbo v1, "smart_float_window_traffic_click"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;->smart_float_window_traffic_click:Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

    .line 70
    new-instance v0, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

    const-string/jumbo v1, "smart_float_window_traffic_daily_click"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;->smart_float_window_traffic_daily_click:Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

    .line 72
    new-instance v0, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

    const-string/jumbo v1, "smart_float_window_hot_event_click"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;->smart_float_window_hot_event_click:Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

    .line 75
    new-instance v0, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

    const-string/jumbo v1, "incoming_call_tts"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;->incoming_call_tts:Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

    .line 78
    new-instance v0, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

    const-string/jumbo v1, "incoming_call_float_window"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2}, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;->incoming_call_float_window:Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

    .line 81
    new-instance v0, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

    const-string/jumbo v1, "outgoing_call_float_window"

    const/16 v2, 0x18

    invoke-direct {v0, v1, v2}, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;->outgoing_call_float_window:Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

    .line 84
    new-instance v0, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

    const-string/jumbo v1, "carmode_statechange_notification_bar"

    const/16 v2, 0x19

    invoke-direct {v0, v1, v2}, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;->carmode_statechange_notification_bar:Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

    .line 87
    new-instance v0, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

    const-string/jumbo v1, "carmode_click_close_notification_bar"

    const/16 v2, 0x1a

    invoke-direct {v0, v1, v2}, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;->carmode_click_close_notification_bar:Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

    .line 90
    new-instance v0, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

    const-string/jumbo v1, "handle_missed_incoming_call"

    const/16 v2, 0x1b

    invoke-direct {v0, v1, v2}, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;->handle_missed_incoming_call:Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

    .line 93
    new-instance v0, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

    const-string/jumbo v1, "schedule_trigger"

    const/16 v2, 0x1c

    invoke-direct {v0, v1, v2}, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;->schedule_trigger:Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

    .line 96
    new-instance v0, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

    const-string/jumbo v1, "sms_contact_save"

    const/16 v2, 0x1d

    invoke-direct {v0, v1, v2}, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;->sms_contact_save:Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

    .line 99
    new-instance v0, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

    const-string/jumbo v1, "sms_content_dialog_show"

    const/16 v2, 0x1e

    invoke-direct {v0, v1, v2}, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;->sms_content_dialog_show:Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

    .line 102
    new-instance v0, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

    const-string/jumbo v1, "broadcast_float_window_show"

    const/16 v2, 0x1f

    invoke-direct {v0, v1, v2}, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;->broadcast_float_window_show:Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

    .line 105
    new-instance v0, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

    const-string/jumbo v1, "shortcut_codescan"

    const/16 v2, 0x20

    invoke-direct {v0, v1, v2}, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;->shortcut_codescan:Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

    .line 108
    new-instance v0, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

    const-string/jumbo v1, "version_update"

    const/16 v2, 0x21

    invoke-direct {v0, v1, v2}, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;->version_update:Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

    .line 111
    new-instance v0, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

    const-string/jumbo v1, "viafly_dial"

    const/16 v2, 0x22

    invoke-direct {v0, v1, v2}, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;->viafly_dial:Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

    .line 114
    new-instance v0, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

    const-string/jumbo v1, "mic_notify_to_sp_dlg"

    const/16 v2, 0x23

    invoke-direct {v0, v1, v2}, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;->mic_notify_to_sp_dlg:Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

    .line 117
    new-instance v0, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

    const-string/jumbo v1, "mic_notify_to_home"

    const/16 v2, 0x24

    invoke-direct {v0, v1, v2}, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;->mic_notify_to_home:Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

    .line 120
    new-instance v0, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

    const-string/jumbo v1, "mic_notify_to_setting"

    const/16 v2, 0x25

    invoke-direct {v0, v1, v2}, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;->mic_notify_to_setting:Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

    .line 123
    new-instance v0, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

    const-string/jumbo v1, "alarm_new_dlg"

    const/16 v2, 0x26

    invoke-direct {v0, v1, v2}, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;->alarm_new_dlg:Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

    .line 126
    new-instance v0, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

    const-string/jumbo v1, "desktop_lx_shortcut"

    const/16 v2, 0x27

    invoke-direct {v0, v1, v2}, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;->desktop_lx_shortcut:Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

    .line 129
    new-instance v0, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

    const-string/jumbo v1, "bill_notify_content_to_detail"

    const/16 v2, 0x28

    invoke-direct {v0, v1, v2}, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;->bill_notify_content_to_detail:Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

    .line 132
    new-instance v0, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

    const-string/jumbo v1, "bill_notify_content_refresh"

    const/16 v2, 0x29

    invoke-direct {v0, v1, v2}, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;->bill_notify_content_refresh:Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

    .line 135
    new-instance v0, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

    const-string/jumbo v1, "bill_notify_to_setting"

    const/16 v2, 0x2a

    invoke-direct {v0, v1, v2}, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;->bill_notify_to_setting:Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

    .line 8
    const/16 v0, 0x2b

    new-array v0, v0, [Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

    sget-object v1, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;->home:Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;->widget:Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;->widget_mic:Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;->widget_call:Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;->widget_sms:Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;->shortcut:Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;->search:Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;->notice_notification_bar:Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;->notice_pop_windows:Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;->speech_wake:Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;->bluetooth_wake:Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;->call_sms_notifiaction:Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;->download_notification:Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;->long_press_home:Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;->smart_float_bad_weather_click:Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;->smart_float_window_cooling_click:Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;->smart_float_air_pollution_click:Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;->smart_float_window_train_click:Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;->smart_float_window_holiday_click:Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;->smart_float_window_traffic_click:Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;->smart_float_window_traffic_daily_click:Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;->smart_float_window_hot_event_click:Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;->incoming_call_tts:Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;->incoming_call_float_window:Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;->outgoing_call_float_window:Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;->carmode_statechange_notification_bar:Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;->carmode_click_close_notification_bar:Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;->handle_missed_incoming_call:Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;->schedule_trigger:Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;->sms_contact_save:Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    sget-object v2, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;->sms_content_dialog_show:Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    sget-object v2, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;->broadcast_float_window_show:Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

    aput-object v2, v0, v1

    const/16 v1, 0x20

    sget-object v2, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;->shortcut_codescan:Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

    aput-object v2, v0, v1

    const/16 v1, 0x21

    sget-object v2, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;->version_update:Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

    aput-object v2, v0, v1

    const/16 v1, 0x22

    sget-object v2, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;->viafly_dial:Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

    aput-object v2, v0, v1

    const/16 v1, 0x23

    sget-object v2, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;->mic_notify_to_sp_dlg:Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

    aput-object v2, v0, v1

    const/16 v1, 0x24

    sget-object v2, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;->mic_notify_to_home:Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

    aput-object v2, v0, v1

    const/16 v1, 0x25

    sget-object v2, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;->mic_notify_to_setting:Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

    aput-object v2, v0, v1

    const/16 v1, 0x26

    sget-object v2, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;->alarm_new_dlg:Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

    aput-object v2, v0, v1

    const/16 v1, 0x27

    sget-object v2, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;->desktop_lx_shortcut:Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

    aput-object v2, v0, v1

    const/16 v1, 0x28

    sget-object v2, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;->bill_notify_content_to_detail:Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

    aput-object v2, v0, v1

    const/16 v1, 0x29

    sget-object v2, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;->bill_notify_content_refresh:Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    sget-object v2, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;->bill_notify_to_setting:Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;->$VALUES:[Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

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
    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iflytek/viafly/blc/log/entities/OpEntryType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 8
    const-class v0, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

    return-object v0
.end method

.method public static values()[Lcom/iflytek/viafly/blc/log/entities/OpEntryType;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;->$VALUES:[Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

    invoke-virtual {v0}, [Lcom/iflytek/viafly/blc/log/entities/OpEntryType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

    return-object v0
.end method
