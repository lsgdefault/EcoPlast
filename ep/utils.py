from django.core.mail import send_mail
from django.template.loader import render_to_string, get_template
from django.utils.html import strip_tags
from io import BytesIO
from django.http import HttpResponse

from xhtml2pdf import pisa

def render_to_pdf(template_src, context_dict={}):
    template = get_template(template_src)
    html  = template.render(context_dict)
    result = BytesIO()
    pdf = pisa.pisaDocument(BytesIO(html.encode("ISO-8859-1")), result)
    if not pdf.err:
        return HttpResponse(result.getvalue(), content_type='application/pdf')
    return None

def sendmail(subject,template,to,context):
    subject = 'OTP Verification'
    template_str = 'ep/'+ template+'.html'
    html_message = render_to_string(template_str, {'data': context})
    plain_message = strip_tags(html_message)
    from_email = 'EcoPlast@gmail.com'
    send_mail(subject, plain_message, from_email, [to], html_message=html_message)

def sendreq(subject,template,to,context):
    subject = 'Plastic Request'
    template_str = 'ep/'+ template+'.html'
    html_message = render_to_string(template_str, {'request': context})
    plain_message = strip_tags(html_message)
    from_email = 'EcoPlast@gmail.com'
    send_mail(subject, plain_message, from_email, [to], html_message=html_message)

def showreq(subject,template,to,context):
    subject = 'Plastic Request'
    template_str = 'ep/'+ template+'.html'
    html_message = render_to_string(template_str, {'showrequest': context})
    plain_message = strip_tags(html_message)
    from_email = 'EcoPlast@gmail.com'
    send_mail(subject, plain_message, from_email, [to], html_message=html_message)

def acceptreq(subject,template,to,context):
    subject = 'Plastic Request Accepted'
    template_str = 'ep/'+ template+'.html'
    html_message = render_to_string(template_str, {'acceptreq': context})
    plain_message = strip_tags(html_message)
    from_email = 'EcoPlast@gmail.com'
    send_mail(subject, plain_message, from_email, [to], html_message=html_message)

def rejectreq(subject,template,to,context):
    subject = 'Plastic Request Rejected'
    template_str = 'ep/'+ template+'.html'
    html_message = render_to_string(template_str, {'rejectreq': context})
    plain_message = strip_tags(html_message)
    from_email = 'EcoPlast@gmail.com'
    send_mail(subject, plain_message, from_email, [to], html_message=html_message)

def PickupSent(subject,template,to,context):
    subject = 'Plastic Pickup Request Sent'
    template_str = 'ep/'+ template+'.html'
    html_message = render_to_string(template_str, {'pickupsent': context})
    plain_message = strip_tags(html_message)
    from_email = 'EcoPlast@gmail.com'
    send_mail(subject, plain_message, from_email, [to], html_message=html_message)

def PickupAccept(subject,template,to,context):
    subject = 'Plastic Pickup Request Accepted'
    template_str = 'ep/'+ template+'.html'
    html_message = render_to_string(template_str, {'pickupaccept': context})
    plain_message = strip_tags(html_message)
    from_email = 'EcoPlasts@gmail.com'
    send_mail(subject, plain_message, from_email, [to], html_message=html_message)

def forgotpassword(subject,template,to,context):
    subject = 'Forgot Password'
    template_str = 'ep/'+ template+'.html'
    html_message = render_to_string(template_str, {'forgotpassword': context})
    plain_message = strip_tags(html_message)
    from_email = 'EcoPlasts@gmail.com'
    send_mail(subject, plain_message, from_email, [to], html_message=html_message)

# def PickupReject(subject,template,to,context):
#     subject = 'Plastic Pickup Request Accepted'
#     template_str = 'ep/'+ template+'.html'
#     html_message = render_to_string(template_str, {'pickupreject': context})
#     plain_message = strip_tags(html_message)
#     from_email = 'EcoPlast.aans@gmail.com'
#     send_mail(subject, plain_message, from_email, [to], html_message=html_message)