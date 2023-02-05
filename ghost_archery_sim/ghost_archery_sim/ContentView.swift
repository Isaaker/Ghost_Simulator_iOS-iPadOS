//
//  ContentView.swift
//  ghost_archery_sim
//
//  Created by Isaac Hernán Martí on 28/1/23.
//

import SwiftUI

struct Navigation: View {
    @AppStorage ("Navigation_hidden") var Navigation_hidden: Bool = true
    @AppStorage ("Legal") var legal: Bool = true
    @AppStorage ("Beta") var beta: Bool = true
    @AppStorage ("welcome") var welcome: Bool = true
    var body: some View {
        if welcome == true {
            VStack{
                Spacer()
                Text("Ghost Archery Simulator")
                    .font(.largeTitle)
                Image("app_icon")
                Spacer()
                Button(action: {
                    welcome = false
                    legal = false
                    beta = false
                }, label: {
                    HStack{
                        Text("Start")
                            .font(.title)
                    }
                })
                .buttonStyle(.borderedProminent)
                Spacer()
            }
        }
        //Legal Banner
        if legal == false{
            VStack{
                Spacer()
                Text("License")
                    .font(.title)
                Spacer()
                Text("Please read the following license of use carefully")
                    .multilineTextAlignment(.center)
                Divider()
                ScrollView {
                    Text("""
Creative Commons Atribución/Reconocimiento-NoComercial-SinDerivados 4.0 Licencia Pública Internacional — CC BY-NC-ND 4.0

Al ejercer los Derechos Licenciados (definidos a continuación), Usted acepta y acuerda estar obligado por los términos y condiciones de esta Licencia Internacional Pública de Atribución/Reconocimiento-NoComercial-SinDerivados 4.0 de Creative Commons ("Licencia Pública"). En la medida en que esta Licencia Pública pueda ser interpretada como un contrato, a Usted se le otorgan los Derechos Licenciados en consideración a su aceptación de estos términos y condiciones, y el Licenciante le concede a Usted tales derechos en consideración a los beneficios que el Licenciante recibe por poner a disposición el Material Licenciado bajo estos términos y condiciones.

Sección 1 – Definiciones.

Material Adaptado es aquel material protegido por Derechos de Autor y Derechos Similares que se deriva o se crea en base al Material Licenciado y en el cual el Material Licenciado se traduce, altera, arregla, transforma o modifica de manera tal que dicho resultado sea de aquellos que requieran autorización de acuerdo con los Derechos de Autor y Derechos Similares que ostenta el Licenciante. A los efectos de esta Licencia Pública, cuando el Material Licenciado se trate de una obra musical, una interpretación o una grabación sonora, la sincronización temporal de este material con una imagen en movimiento siempre producirá Material Adaptado.
Derechos de Autor y Derechos Similares son todos aquellos derechos estrechamente vinculados a los derechos de autor, incluidos, de manera enunciativa y no taxativa, los derechos sobre las interpretaciones, las emisiones, las grabaciones sonoras y los Derechos "Sui Generis" sobre Bases de Datos, sin importar cómo estos derechos se encuentren enunciados o categorizados. A los efectos de esta Licencia Pública, los derechos especificados en las secciones 2(b)(1)-(2) no se consideran Derechos de Autor y Derechos Similares.
Medidas Tecnológicas Efectivas son aquellas medidas que, en ausencia de la debida autorización, no pueden ser eludidas en virtud de las leyes que cumplen las obligaciones del artículo 11 del Tratado de la OMPI sobre Derecho de Autor adoptado el 20 de diciembre de 1996, y/o acuerdos internacionales similares.
Excepciones y Limitaciones son el uso justo (fair use), el trato justo (fair dealing) y/o cualquier otra excepción o limitación a los Derechos de Autor y Derechos Similares que se apliquen al uso el Material Licenciado.
Material Licenciado es obra artística o literaria, base de datos o cualquier otro material al cual el Licenciante aplicó esta Licencia Pública.
Derechos Licenciados son derechos otorgados a Usted bajo los términos y condiciones de esta Licencia Pública, los cuales se limitan a todos los Derechos de Autor y Derechos Similares que apliquen al uso del Material Licenciado y que el Licenciante tiene potestad legal para licenciar.
Licenciante es el individuo(s) o la entidad(es) que concede derechos bajo esta Licencia Pública.
NoComercial, a los efectos de esta licencia, es que no se encuentre principalmente destinado o dirigido a obtener una ventaja comercial o una compensación monetaria. Para los propósitos de esta Licencia Pública, el intercambio de Material Licenciado por otro material sujeto a Derechos de Autor y Derechos Similares a través de mecanismos de intercambio de archivos digitales o de medios similares, se considerará como NoComercial siempre que no haya pago de una compensación monetaria en relación con el intercambio.
Compartir significa proporcionar material al público por cualquier medio o procedimiento que requiera permiso conforme a los Derechos Licenciados, tales como la reproducción, exhibición pública, presentación pública, distribución, difusión, comunicación o importación, así como también su puesta a disposición, incluyendo formas en que el público pueda acceder al material desde un lugar y momento elegido individualmente por ellos.
Derechos "Sui Generis" sobre Bases de Datos son aquellos derechos diferentes a los derechos de autor, resultantes de la Directiva 96/9/EC del Parlamento Europeo y del Consejo, de 11 de marzo de 1996 sobre la protección jurídica de las bases de datos, en sus versiones modificadas y/o posteriores, así como otros derechos esencialmente equivalentes en cualquier otra parte del mundo.
Usted es el individuo o la entidad que ejerce los Derechos Licenciados en esta Licencia Pública. La palabra Su tiene un significado equivalente.
Sección 2 – Ámbito de Aplicación.

Otorgamiento de la licencia.
Sujeto a los términos y condiciones de esta Licencia Pública, el Licenciante le otorga a Usted una licencia de carácter global, gratuita, no transferible a terceros, no exclusiva e irrevocable para ejercer los Derechos Licenciados sobre el Material Licenciado para:
reproducir y Compartir el Material Licenciado, en su totalidad o en parte, solamente para fines NoComerciales; y
producir y reproducir, pero no Compartir Material Adaptado, para fines NoComerciales.
Excepciones y Limitaciones. Para evitar cualquier duda, donde se apliquen Excepciones y Limitaciones al uso del Material Licenciado, esta Licencia Pública no será aplicable, y Usted no tendrá necesidad de cumplir con sus términos y condiciones.
Vigencia. La vigencia de esta Licencia Pública está especificada en la sección 6(a).
Medios y formatos; modificaciones técnicas permitidas. El Licenciante le autoriza a Usted a ejercer los Derechos Licenciados en todos los medios y formatos, actualmente conocidos o por crearse en el futuro, y a realizar las modificaciones técnicas necesarias para ello. El Licenciante renuncia y/o se compromete a no hacer valer cualquier derecho o potestad para prohibirle a Usted realizar las modificaciones técnicas necesarias para ejercer los Derechos Licenciados, incluyendo las modificaciones técnicas necesarias para eludir las Medidas Tecnológicas Efectivas. A los efectos de esta Licencia Pública, la mera realización de modificaciones autorizadas por esta sección 2(a)(4) nunca produce Material Adaptado.
Receptores posteriores.
Oferta del Licenciante – Material Licenciado. Cada receptor de Material Licenciado recibe automáticamente una oferta del Licenciante para ejercer los Derechos Licenciados bajo los términos y condiciones de esta Licencia Pública.
Sin restricciones a receptores posteriores. Usted no puede ofrecer o imponer ningún término ni condición diferente o adicional, ni puede aplicar ninguna Medida Tecnológica Efectiva al Material Licenciado si haciéndolo restringe el ejercicio de los Derechos Licenciados a cualquier receptor del Material Licenciado.
Sin endoso. Nada de lo contenido en esta Licencia Pública constituye o puede interpretarse como un permiso para afirmar o implicar que Usted, o que Su uso del Material Licenciado, está conectado, patrocinado, respaldado o reconocido con estatus oficial por el Licenciante u otros designados para recibir la Atribución/Reconocimiento según lo dispuesto en la sección 3(a)(1)(A)(i).
Otros derechos.

Los derechos morales, tales como el derecho a la integridad, no están comprendidos bajo esta Licencia Pública ni tampoco los derechos de publicidad y privacidad ni otros derechos personales similares. Sin embargo, en la medida de lo posible, el Licenciante renuncia y/o se compromete a no hacer valer ninguno de estos derechos que ostenta como Licenciante, limitándose a lo necesario para que Usted pueda ejercer los Derechos Licenciados, pero no de otra manera.
Los derechos de patentes y marcas no son objeto de esta Licencia Pública.
En la medida de lo posible, el Licenciante renuncia al derecho de cobrarle regalías a Usted por el ejercicio de los Derechos Licenciados, ya sea directamente o a través de una entidad de gestión colectiva bajo cualquier esquema de licenciamiento voluntario, renunciable o no renunciable. En todos los demás casos, el Licenciante se reserva expresamente cualquier derecho de cobrar esas regalías, incluidos aquellos casos en los que el Material Licenciado sea utilizado para fines distintos a los NoComerciales.
Sección 3 – Condiciones de la Licencia.

Su ejercicio de los Derechos Licenciados está expresamente sujeto a las condiciones siguientes.

Atribución/Reconocimiento.

Si Usted comparte el Material Licenciado, Usted debe:

Conservar lo siguiente si es facilitado por el Licenciante con el Material Licenciado:
identificación del creador o los creadores del Material Licenciado y de cualquier otra persona designada para recibir Atribución/Reconocimiento, de cualquier manera razonable solicitada por el Licenciante (incluyendo por seudónimo si este ha sido designado);
un aviso sobre derecho de autor;
un aviso que se refiera a esta Licencia Pública;
un aviso que se refiera a la limitación de garantías;
un URI o un hipervínculo al Material Licenciado en la medida razonablemente posible;
Indicar si Usted modificó el Material Licenciado y conservar una indicación de las modificaciones anteriores; e
Indicar que el Material Licenciado está bajo esta Licencia Pública, e incluir el texto, el URI o el hipervínculo a esta Licencia Pública.
Para evitar dudas, no tiene permiso bajo esta Licencia Pública para compartir Material Adaptado.
Usted puede satisfacer las condiciones de la sección 3(a)(1) de cualquier forma razonable según el medio, las maneras y el contexto en los cuales Usted Comparta el Material Licenciado. Por ejemplo, puede ser razonable satisfacer las condiciones facilitando un URI o un hipervínculo a un recurso que incluya la información requerida.
Bajo requerimiento del Licenciante, Usted debe eliminar cualquier información requerida por la sección 3(a)(1)(A) en la medida razonablemente posible.
Sección 4 – Derechos "Sui Generis" sobre Bases de Datos.

Cuando los Derechos Licenciados incluyan Derechos "Sui Generis" sobre Bases de Datos que apliquen a Su uso del Material Licenciado:

para evitar cualquier duda, la sección 2(a)(1) le concede a Usted el derecho a extraer, reutilizar, reproducir y Compartir todo o una parte sustancial de los contenidos de la base de datos solamente para fines NoComerciales, si no compartes Material Adaptado;
si Usted incluye la totalidad o una parte sustancial del contenido de una base de datos en otra sobre la cual Usted ostenta Derecho "Sui Generis" sobre Bases de Datos, entonces ella (pero no sus contenidos individuales) se entenderá como Material Adaptado; y
Usted debe cumplir con las condiciones de la sección 3(a) si Usted Comparte la totalidad o una parte sustancial de los contenidos de la base de datos.
Para evitar dudas, esta sección 4 complementa y no sustituye Sus obligaciones bajo esta Licencia Pública cuando los Derechos Licenciados incluyen otros Derechos de Autor y Derechos Similares.
Sección 5 – Exención de Garantías y Limitación de Responsabilidad.

Salvo que el Licenciante se haya comprometido mediante un acuerdo por separado, en la medida de lo posible el Licenciante ofrece el Material Licenciado tal como es y tal como está disponible y no se hace responsable ni ofrece garantías de ningún tipo respecto al Material Licenciado, ya sea de manera expresa, implícita, legal u otra. Esto incluye, de manera no taxativa, las garantías de título, comerciabilidad, idoneidad para un propósito en particular, no infracción, ausencia de vicios ocultos u otros defectos, la exactitud, la presencia o la ausencia de errores, sean o no conocidos o detectables. Cuando no se permita, totalmente o en parte, la declaración de ausencia de garantías, a Usted puede no aplicársele esta exclusión.
En la medida de lo posible, en ningún caso el Licenciante será responsable ante Usted por ninguna teoría legal (incluyendo, de manera no taxativa, la negligencia) o de otra manera por cualquier pérdida, coste, gasto o daño directo, especial, indirecto, incidental, consecuente, punitivo, ejemplar u otro que surja de esta Licencia Pública o del uso del Material Licenciado, incluso cuando el Licenciante haya sido advertido de la posibilidad de tales pérdidas, costes, gastos o daños. Cuando no se permita la limitación de responsabilidad, ya sea totalmente o en parte, a Usted puede no aplicársele esta limitación.
La renuncia de garantías y la limitación de responsabilidad descritas anteriormente deberán ser interpretadas, en la medida de lo posible, como lo más próximo a una exención y renuncia absoluta a todo tipo de responsabilidad.
Sección 6 – Vigencia y Terminación.

Esta Licencia Pública tiene una vigencia de aplicación igual al plazo de protección de los Derechos de Autor y Derechos Similares licenciados aquí. Sin embargo, si Usted incumple las condiciones de esta Licencia Pública, los derechos que se le conceden mediante esta Licencia Pública terminan automáticamente.
En aquellos casos en que Su derecho a utilizar el Material Licenciado se haya terminado conforme a la sección 6(a), éste será restablecido:

automáticamente a partir de la fecha en que la violación sea subsanada, siempre y cuando esta se subsane dentro de los 30 días siguientes a partir de Su descubrimiento de la violación; o
tras el restablecimiento expreso por parte del Licenciante.
Para evitar dudas, esta sección 6(b) no afecta ningún derecho que pueda tener el Licenciante a buscar resarcimiento por Sus violaciones de esta Licencia Pública.
Para evitar dudas, el Licenciante también puede ofrecer el Material Licenciado bajo términos o condiciones diferentes, o dejar de distribuir el Material Licenciado en cualquier momento; sin embargo, hacer esto no pondrá fin a esta Licencia Pública.
Las secciones 1, 5, 6, 7, y 8 permanecerán vigentes a la terminación de esta Licencia Pública.
Sección 7 – Otros Términos y Condiciones.

El Licenciante no estará obligado por ningún término o condición adicional o diferente que Usted le comunique a menos que se acuerde expresamente.
Cualquier arreglo, convenio o acuerdo en relación con el Material Licenciado que no se indique en este documento se considera separado e independiente de los términos y condiciones de esta Licencia Pública.
Sección 8 – Interpretación.

Para evitar dudas, esta Licencia Pública no es ni deberá interpretarse como una reducción, limitación, restricción, o una imposición de condiciones al uso de Material Licenciado que legalmente pueda realizarse sin permiso del titular, más allá de lo contemplado en esta Licencia Pública.
En la medida de lo posible, si alguna disposición de esta Licencia Pública se considera inaplicable, esta será automáticamente modificada en la medida mínima necesaria para hacerla aplicable. Si la disposición no puede ser reformada, deberá ser eliminada de esta Licencia Pública sin afectar la exigibilidad de los términos y condiciones restantes.
No se podrá renunciar a ningún término o condición de esta Licencia Pública, ni se consentirá ningún incumplimiento, a menos que se acuerde expresamente con el Licenciante.
Nada en esta Licencia Pública constituye ni puede ser interpretado como una limitación o una renuncia a los privilegios e inmunidades que aplican al Licenciante o a Usted, incluyendo aquellos surgidos a partir de procesos legales de cualquier jurisdicción o autoridad.


Contacta con el Licenciante:
- E-Mail: isaaker.hernan@proton.me
- Telegram: Isaaker
- Otros Metodos: https://piscinadeentropia.es/contacto

----------------
                                                 Attribution-NonCommercial-NoDerivatives 4.0 International

By exercising the Licensed Rights (defined below), You accept and agree to be bound by the terms and conditions of this Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International Public License ("Public License"). To the extent this Public License may be interpreted as a contract, You are granted the Licensed Rights in consideration of Your acceptance of these terms and conditions, and the Licensor grants You such rights in consideration of benefits the Licensor receives from making the Licensed Material available under these terms and conditions.

Section 1 – Definitions.

Adapted Material means material subject to Copyright and Similar Rights that is derived from or based upon the Licensed Material and in which the Licensed Material is translated, altered, arranged, transformed, or otherwise modified in a manner requiring permission under the Copyright and Similar Rights held by the Licensor. For purposes of this Public License, where the Licensed Material is a musical work, performance, or sound recording, Adapted Material is always produced where the Licensed Material is synched in timed relation with a moving image.
Copyright and Similar Rights means copyright and/or similar rights closely related to copyright including, without limitation, performance, broadcast, sound recording, and Sui Generis Database Rights, without regard to how the rights are labeled or categorized. For purposes of this Public License, the rights specified in Section 2(b)(1)-(2) are not Copyright and Similar Rights.
Effective Technological Measures means those measures that, in the absence of proper authority, may not be circumvented under laws fulfilling obligations under Article 11 of the WIPO Copyright Treaty adopted on December 20, 1996, and/or similar international agreements.
Exceptions and Limitations means fair use, fair dealing, and/or any other exception or limitation to Copyright and Similar Rights that applies to Your use of the Licensed Material.
Licensed Material means the artistic or literary work, database, or other material to which the Licensor applied this Public License.
Licensed Rights means the rights granted to You subject to the terms and conditions of this Public License, which are limited to all Copyright and Similar Rights that apply to Your use of the Licensed Material and that the Licensor has authority to license.
Licensor means the individual(s) or entity(ies) granting rights under this Public License.
NonCommercial means not primarily intended for or directed towards commercial advantage or monetary compensation. For purposes of this Public License, the exchange of the Licensed Material for other material subject to Copyright and Similar Rights by digital file-sharing or similar means is NonCommercial provided there is no payment of monetary compensation in connection with the exchange.
Share means to provide material to the public by any means or process that requires permission under the Licensed Rights, such as reproduction, public display, public performance, distribution, dissemination, communication, or importation, and to make material available to the public including in ways that members of the public may access the material from a place and at a time individually chosen by them.
Sui Generis Database Rights means rights other than copyright resulting from Directive 96/9/EC of the European Parliament and of the Council of 11 March 1996 on the legal protection of databases, as amended and/or succeeded, as well as other essentially equivalent rights anywhere in the world.
You means the individual or entity exercising the Licensed Rights under this Public License. Your has a corresponding meaning.
Section 2 – Scope.

License grant.
Subject to the terms and conditions of this Public License, the Licensor hereby grants You a worldwide, royalty-free, non-sublicensable, non-exclusive, irrevocable license to exercise the Licensed Rights in the Licensed Material to:
reproduce and Share the Licensed Material, in whole or in part, for NonCommercial purposes only; and
produce and reproduce, but not Share, Adapted Material for NonCommercial purposes only.
Exceptions and Limitations. For the avoidance of doubt, where Exceptions and Limitations apply to Your use, this Public License does not apply, and You do not need to comply with its terms and conditions.
Term. The term of this Public License is specified in Section 6(a).
Media and formats; technical modifications allowed. The Licensor authorizes You to exercise the Licensed Rights in all media and formats whether now known or hereafter created, and to make technical modifications necessary to do so. The Licensor waives and/or agrees not to assert any right or authority to forbid You from making technical modifications necessary to exercise the Licensed Rights, including technical modifications necessary to circumvent Effective Technological Measures. For purposes of this Public License, simply making modifications authorized by this Section 2(a)(4) never produces Adapted Material.
Downstream recipients.
Offer from the Licensor – Licensed Material. Every recipient of the Licensed Material automatically receives an offer from the Licensor to exercise the Licensed Rights under the terms and conditions of this Public License.
No downstream restrictions. You may not offer or impose any additional or different terms or conditions on, or apply any Effective Technological Measures to, the Licensed Material if doing so restricts exercise of the Licensed Rights by any recipient of the Licensed Material.
No endorsement. Nothing in this Public License constitutes or may be construed as permission to assert or imply that You are, or that Your use of the Licensed Material is, connected with, or sponsored, endorsed, or granted official status by, the Licensor or others designated to receive attribution as provided in Section 3(a)(1)(A)(i).
Other rights.

Moral rights, such as the right of integrity, are not licensed under this Public License, nor are publicity, privacy, and/or other similar personality rights; however, to the extent possible, the Licensor waives and/or agrees not to assert any such rights held by the Licensor to the limited extent necessary to allow You to exercise the Licensed Rights, but not otherwise.
Patent and trademark rights are not licensed under this Public License.
To the extent possible, the Licensor waives any right to collect royalties from You for the exercise of the Licensed Rights, whether directly or through a collecting society under any voluntary or waivable statutory or compulsory licensing scheme. In all other cases the Licensor expressly reserves any right to collect such royalties, including when the Licensed Material is used other than for NonCommercial purposes.
Section 3 – License Conditions.

Your exercise of the Licensed Rights is expressly made subject to the following conditions.

Attribution.

If You Share the Licensed Material, You must:

retain the following if it is supplied by the Licensor with the Licensed Material:
identification of the creator(s) of the Licensed Material and any others designated to receive attribution, in any reasonable manner requested by the Licensor (including by pseudonym if designated);
a copyright notice;
a notice that refers to this Public License;
a notice that refers to the disclaimer of warranties;
a URI or hyperlink to the Licensed Material to the extent reasonably practicable;
indicate if You modified the Licensed Material and retain an indication of any previous modifications; and
indicate the Licensed Material is licensed under this Public License, and include the text of, or the URI or hyperlink to, this Public License.
For the avoidance of doubt, You do not have permission under this Public License to Share Adapted Material.
You may satisfy the conditions in Section 3(a)(1) in any reasonable manner based on the medium, means, and context in which You Share the Licensed Material. For example, it may be reasonable to satisfy the conditions by providing a URI or hyperlink to a resource that includes the required information.
If requested by the Licensor, You must remove any of the information required by Section 3(a)(1)(A) to the extent reasonably practicable.
Section 4 – Sui Generis Database Rights.

Where the Licensed Rights include Sui Generis Database Rights that apply to Your use of the Licensed Material:

for the avoidance of doubt, Section 2(a)(1) grants You the right to extract, reuse, reproduce, and Share all or a substantial portion of the contents of the database for NonCommercial purposes only and provided You do not Share Adapted Material;
if You include all or a substantial portion of the database contents in a database in which You have Sui Generis Database Rights, then the database in which You have Sui Generis Database Rights (but not its individual contents) is Adapted Material; and
You must comply with the conditions in Section 3(a) if You Share all or a substantial portion of the contents of the database.
For the avoidance of doubt, this Section 4 supplements and does not replace Your obligations under this Public License where the Licensed Rights include other Copyright and Similar Rights.
Section 5 – Disclaimer of Warranties and Limitation of Liability.

Unless otherwise separately undertaken by the Licensor, to the extent possible, the Licensor offers the Licensed Material as-is and as-available, and makes no representations or warranties of any kind concerning the Licensed Material, whether express, implied, statutory, or other. This includes, without limitation, warranties of title, merchantability, fitness for a particular purpose, non-infringement, absence of latent or other defects, accuracy, or the presence or absence of errors, whether or not known or discoverable. Where disclaimers of warranties are not allowed in full or in part, this disclaimer may not apply to You.
To the extent possible, in no event will the Licensor be liable to You on any legal theory (including, without limitation, negligence) or otherwise for any direct, special, indirect, incidental, consequential, punitive, exemplary, or other losses, costs, expenses, or damages arising out of this Public License or use of the Licensed Material, even if the Licensor has been advised of the possibility of such losses, costs, expenses, or damages. Where a limitation of liability is not allowed in full or in part, this limitation may not apply to You.
The disclaimer of warranties and limitation of liability provided above shall be interpreted in a manner that, to the extent possible, most closely approximates an absolute disclaimer and waiver of all liability.
Section 6 – Term and Termination.

This Public License applies for the term of the Copyright and Similar Rights licensed here. However, if You fail to comply with this Public License, then Your rights under this Public License terminate automatically.
Where Your right to use the Licensed Material has terminated under Section 6(a), it reinstates:

automatically as of the date the violation is cured, provided it is cured within 30 days of Your discovery of the violation; or
upon express reinstatement by the Licensor.
For the avoidance of doubt, this Section 6(b) does not affect any right the Licensor may have to seek remedies for Your violations of this Public License.
For the avoidance of doubt, the Licensor may also offer the Licensed Material under separate terms or conditions or stop distributing the Licensed Material at any time; however, doing so will not terminate this Public License.
Sections 1, 5, 6, 7, and 8 survive termination of this Public License.
Section 7 – Other Terms and Conditions.

The Licensor shall not be bound by any additional or different terms or conditions communicated by You unless expressly agreed.
Any arrangements, understandings, or agreements regarding the Licensed Material not stated herein are separate from and independent of the terms and conditions of this Public License.
Section 8 – Interpretation.

For the avoidance of doubt, this Public License does not, and shall not be interpreted to, reduce, limit, restrict, or impose conditions on any use of the Licensed Material that could lawfully be made without permission under this Public License.
To the extent possible, if any provision of this Public License is deemed unenforceable, it shall be automatically reformed to the minimum extent necessary to make it enforceable. If the provision cannot be reformed, it shall be severed from this Public License without affecting the enforceability of the remaining terms and conditions.
No term or condition of this Public License will be waived and no failure to comply consented to unless expressly agreed to by the Licensor.
Nothing in this Public License constitutes or may be interpreted as a limitation upon, or waiver of, any privileges and immunities that apply to the Licensor or You, including from the legal processes of any jurisdiction or authority


Contact Licensor:
- E-Mail: isaaker.hernan@proton.me
- Telegram: Isaaker
- Other methods: https://piscinadeentropia.es/contacto
""")
                    GroupBox{
                        Link(destination: URL(string: "https://github.com/Isaaker/Ghost_Simulator_iOS-iPadOS/blob/main/LICENSE.txt")!){
                            Text("An online copy of the license can be found here")
                        }
                    }
                }
                Spacer()
                GroupBox(){
                    Text("By clicking Accept, you accept the terms of use, if at any time you would like to reject them, you must uninstall the application.")
                        .multilineTextAlignment(.center)
                    
                }
                Button(action: {legal=true}, label: {
                    HStack{
                        Image(systemName: "checkmark.circle.fill")
                            .foregroundColor(.green)
                        Text("Accept")
                    }
                })
                .buttonStyle(.borderedProminent)
                Spacer()
            }
        }
        else{
            if beta == false{
                VStack{
                    HStack{
                        Image(systemName: "testtube")
                            .foregroundColor(.green)
                        Text("App Beta Version")
                            .font(.title)
                    }
                    Text("Hi Beta Tester, now you have access to the Ghost Archery Simulator App beta Version, to use the app you need to agree the following Terms. If you don't Accept it, you can't use this version of the App")
                        .multilineTextAlignment(.center)
                    Divider()
                    ScrollView{
                        HStack{
                            Image(systemName: "1.circle.fill")
                                .resizable()
                                .foregroundColor(.blue)
                                .frame(width: 40 ,height: 40)
                            Text("The content of the application is confidential, and therefore can only be viewed by you, persons previously authorized by the license owner and other authorized developers.")
                        }
                        HStack{
                            Image(systemName: "2.circle.fill")
                                .resizable()
                                .foregroundColor(.blue)
                                .frame(width: 40 ,height: 40)
                            Text("Distribution of the application beyond your personal devices and controlled by you was strictly prohibited without prior authorization from the licensor.")
                        }
                        HStack{
                            Image(systemName: "3.circle.fill")
                                .resizable()
                                .foregroundColor(.blue)
                                .frame(width: 40 ,height: 40)
                            Text("Modification of this beta of the application is only authorized in the official repository, any other type of modification outside the aforementioned place is prohibited without express authorization from the licensor.")
                        }
                        GroupBox{
                            Spacer()
                            HStack{
                                Image(systemName: "xmark.diamond.fill")
                                    .foregroundColor(.red)
                                Text("Consequences of infringement")
                            }
                            Text("Failure to comply with the rules will result in the withdrawal of access to the application, repositories and so on.In addition to be accompanied by legal action, the licensor reserves all rights.")
                                .multilineTextAlignment(.center)
                        }
                        Spacer()
                        Button(action: {beta=true}, label: {
                            HStack{
                                Image(systemName: "checkmark.circle.fill")
                                    .foregroundColor(.green)
                                Text("Accept")
                            }
                        })
                        .buttonStyle(.borderedProminent)
                        Spacer()
                    }
                    Spacer()
                }
            }
            else{
                if welcome == false{
                    VStack {
                        HStack{
                            Image("app_icon")
                                .resizable()
                                .frame(width: 80, height: 80)
                            //Reset Views
                                .task{
                                    Navigation_hidden = true
                                }
                            Text("Ghost Archery Simulator")
                                .multilineTextAlignment(.center)
                                .font(.title)
                        }
                        if Navigation_hidden == true{
                            NavigationView(content: {Home()})
                        }
                        if Navigation_hidden == false{
                            NavigationView(){
                                List{
                                    Button(action:{Navigation_hidden=true}, label:{
                                        HStack{
                                            Image(systemName: "house.fill")
                                                .foregroundColor(.yellow)
                                            Text("Home")
                                        }
                                    })
                                    NavigationLink(destination: Simulator()){
                                        HStack{
                                            Image(systemName: "figure.archery")
                                                .foregroundColor(.blue)
                                            Text("Simulator")
                                        }
                                    }
                                    NavigationLink(destination: Settings()){
                                        HStack{
                                            Image(systemName: "gear")
                                                .foregroundColor(.gray)
                                            Text("Settings")
                                        }
                                    }
                                }
                            }
                        }
                    }
                    .padding()
                }
            }
        }
    }
}

struct Home: View {
    @AppStorage ("Navigation_hidden") var Navigation_hidden: Bool = true
    @AppStorage("user_info_banner") var user_info_banner: Bool = true
    
    //Notifications
    
    @State var notification_presented: Bool = false
    @AppStorage("user_info_setup") var user_info_setup: Bool = true
    
    func get_notifications(){
        //App Storage
        
        //User Settings
        @AppStorage("user_name") var user_name: String = ""
        //Discipline
        enum disciplines: String, CaseIterable, Identifiable {
            case compound, olympic, long_bow, traditional_recurve, bare_bow, none
            var id: Self { self }
        }
        @AppStorage("user_discipline") var user_discipline: disciplines = .none
        //Season
        enum seasons: String, CaseIterable, Identifiable {
            case indoor, outdoor, none
            var id: Self { self }
        }
        @AppStorage("user_season") var user_season: seasons = .none
        @State var user_info_requiered: Bool = true
        
        
        //User Info Setup
        if user_name == ""{
            user_info_setup = false
            notification_presented = true
        }
        else{
            if user_discipline == disciplines.none{
                user_info_setup = false
                notification_presented = true
            }
            else{
                if user_season == seasons.none{
                    user_info_setup = false
                    notification_presented = true
                }
                else{
                    user_info_setup = false
                    notification_presented = false
                }
            }
        }
    }
    var body: some View {
        VStack{
            HStack{
                Button(action: {
                    Navigation_hidden = false
                },label:{
                    HStack{
                        Image(systemName: "filemenu.and.selection")
                            .foregroundColor(.blue)
                        Text("Menu")
                    }
                })
            Spacer()
            }
            VStack {
                HStack{
                    Image(systemName: "house.fill")
                        .foregroundColor(.yellow)
                    Text("Home")
                        .font(.title)
                }
                Divider()
                //App Notifications
                Spacer()
                ScrollView{
                    HStack{
                        Image(systemName: "bell.badge.fill")
                            .foregroundColor(.red)
                        Text("Notifications")
                            .font(.title2)
                    }
                    Text("Pull to Refresh")
                        .foregroundColor(.green)
                    if notification_presented == true{
                        Divider()
                        Spacer()
                        if user_info_setup == false{
                            GroupBox{
                                NavigationLink(destination: user_info()){
                                    HStack{
                                        Image(systemName: "person.fill")
                                            .foregroundColor(.purple)
                                        Text("Setup the User Information")
                                            .font(.title3)
                                    }
                                }
                            }
                            Divider()
                        }
                        Spacer()
                    }
                    else{
                        GroupBox{
                            Image(systemName:"bell.slash.circle.fill")
                                .foregroundColor(.brown)
                            Text("At the moment nothing is happening around here")
                                .font(.title3)
                        }
                    }
                    Spacer()
                }
                .refreshable {
                    get_notifications()
                }
            }
            Spacer()
        }
    }
}

struct Simulator: View {
    
    //User Settings
    @AppStorage("user_name") var user_name: String = ""
    //Discipline
    enum disciplines: String, CaseIterable, Identifiable {
        case compound, olympic, long_bow, traditional_recurve, bare_bow, none
        var id: Self { self }
    }
    @AppStorage("user_discipline") var user_discipline: disciplines = .none
    //Season
    enum seasons: String, CaseIterable, Identifiable {
        case indoor, outdoor, none
        var id: Self { self }
    }
    @AppStorage("user_season") var user_season: seasons = .none
    @State var user_info_requiered: Bool = true
    
    //Points settings
    
    @AppStorage("max_points") var max_points = 2
    @AppStorage("min_points") var min_points = 0
    
    var body: some View {
        
        //Check User Info
        
        if user_name == ""{
            GroupBox{
                Spacer()
                NavigationLink(destination: user_info()){
                    HStack{
                        Image(systemName: "gear.badge.xmark")
                            .foregroundColor(.red)
                        Text("Please, before use the simulator you need to set all the user settings.")
                    }
                }
                Spacer()
            }
            .task{
                user_info_requiered = false
            }
        }
        if user_info_requiered == true{
            if user_discipline == disciplines.none{
                GroupBox{
                    Spacer()
                    NavigationLink(destination: user_info()){
                        HStack{
                            Image(systemName: "gear.badge.xmark")
                                .foregroundColor(.red)
                            Text("Please, before use the simulator you need to set all the user settings.")
                        }
                    }
                    Spacer()
                }
                .task{
                    user_info_requiered = false
                }
            }
        }
        if user_info_requiered == true{
            if user_season == seasons.none{
                GroupBox{
                    Spacer()
                    NavigationLink(destination: user_info()){
                        HStack{
                            Image(systemName: "gear.badge.xmark")
                                .foregroundColor(.red)
                            Text("Please, before use the simulator you need to set all the user settings.")
                        }
                    }
                    Spacer()
                }
                .task{
                    user_info_requiered = false
                }
            }
        }
        
        if user_info_requiered == true{
            GroupBox(){
                HStack{
                    Image(systemName: "figure.archery")
                    Text("User Info")
                }
                Divider()
                VStack{
                    Text("Discipline: " + user_discipline.rawValue)
                    
                    Text("Season: " + user_season.rawValue)
                    NavigationLink(destination: user_info()){
                        HStack{
                            Image(systemName: "lightbulb.fill")
                                .foregroundColor(.yellow)
                            Text("Do you want to modify it?")
                        }
                    }
                }
            }
            Spacer()
            //Simulation Parameters
            
            Text("Simulation Parameters")
                .font(.title2)
            
            
            //Season
            if user_season == seasons.outdoor{
                VStack{
                    Stepper(value: $min_points, in: 1...max_points-1) {
                        Text("Min. Points: \(min_points)")
                    }
                    Stepper(value: $max_points, in: min_points+1...720) {
                        Text("Max. Points: \(max_points)")
                    }
                }
            }
            if user_season == seasons.indoor{
                VStack{
                    Stepper(value: $min_points, in: 1...max_points-1) {
                        Text("Min. Points: \(min_points)")
                    }
                    Stepper(value: $max_points, in: min_points+1...600) {
                        Text("Max. Points: \(max_points)")
                    }
                }
            }
            
            Spacer()
            
            //Start Simulation
            
            NavigationLink(destination: simulation()){
                HStack{
                    Image(systemName: "figure.archery")
                        .foregroundColor(.yellow)
                    Text("Start Simulation")
                }
            }
            .buttonStyle(.borderedProminent)
            
            
        }
        Spacer()
    }
}

//Random Number Generator
func random_number_generator(){
    //Import Points
    @AppStorage("max_points") var max_points = 2
    @AppStorage("min_points") var min_points = 0
    //Number
    @State var random_number = Int.random(in: min_points...max_points)
}


//Simulation
struct simulation: View {
    //User Info
    //User Settings
    @AppStorage("user_name") var user_name: String = ""
    //Discipline
    enum disciplines: String, CaseIterable, Identifiable {
        case compound, olympic, long_bow, traditional_recurve, bare_bow, none
        var id: Self { self }
    }
    @AppStorage("user_discipline") var user_discipline: disciplines = .none
    //Season
    enum seasons: String, CaseIterable, Identifiable {
        case indoor, outdoor, none
        var id: Self { self }
    }
    @AppStorage("user_season") var user_season: seasons = .none
    //Random Number Generator
    let randInt = Int.random(in: 0...100)
    //App Storage
    //Points
    @AppStorage("max_points") var max_points = 2
    @AppStorage("min_points") var min_points = 0
    //Points Storage
    @AppStorage("currents_points") var currents_points = 0
    //Finish Message
    @State var finish_message: Bool = false
    //Import Number Generator
    @State var random_number: Int = 0
    var body: some View {
        Text("Simulation")
            .font(.title)
        HStack{
            Text("Max Points: \(max_points)")
            Text("Min Points: \(min_points)")
        }
        Text("The points needs to be entered by set")
        Spacer()
        Button(action: {
            //Some Actions
            random_number_generator()
        }, label:{
            HStack{
                Image(systemName: "arrowtriangle.right.square.fill")
                    .foregroundColor(.green)
                Text("Next")
            }
        })
        HStack{
            VStack{
                Text("Ghost")
                    .font(.title2)
                    .foregroundColor(.gray)
                Divider()
                ScrollView{
                    Text("\(random_number)")
                }
            }
            Divider()
            VStack{
                Text("You")
                    .font(.title2)
                    .foregroundColor(.blue)
                Divider()
                ScrollView{
                    if user_season == seasons.indoor{
                        Stepper(value: $currents_points, in: 1...30) {
                            Text("Points in this set: \(currents_points)")
                        }
                    }
                    if user_season == seasons.outdoor{
                        Stepper(value: $currents_points, in: 1...60) {
                            Text("\(currents_points)")
                        }
                    }
                }
            }
        }
        Spacer()
        Button(action: {
            //Some Actions
            finish_message = true
        }, label:{
            HStack{
                Image(systemName: "stop.circle.fill")
                Text("Finish & Save Simulation")
            }
        })
        .buttonStyle(.borderedProminent)
        .alert(isPresented: $finish_message) {
                Alert(
                    title: Text("Simulation Saved"),
                    message: Text("The simulation has been saved and can be viewed from the history, now you can exit the simulation.")
                )
            }
        Spacer()
    }
}

//Settings

struct Settings: View {
    var body: some View {
        HStack {
            Image(systemName: "gear")
            Text("Settings")
                .font(.title)
        }
        List{
            NavigationLink(destination: user_info()){
                HStack{
                    Image(systemName: "figure.archery")
                        .foregroundColor(.green)
                    Text("User Info")
                }
            }
            NavigationLink(destination: app_info()){
                HStack{
                    Image(systemName: "info.circle.fill")
                        .foregroundColor(.blue)
                    Text("About")
                }
            }
            NavigationLink(destination: appstorage()){
                HStack{
                    Image(systemName: "archivebox.circle.fill")
                        .foregroundColor(.yellow)
                    Text("App Storage")
                }
            }
        }
    }
}

//Settings Sub Menu
struct app_info: View {
    //App Version
    func getVersion() -> String {
        guard let version = Bundle.main.infoDictionary?["CFBundleShortVersionString"] as? String else {
            return "no version info"
        }
        return version
    }
    var body: some View {
        HStack{
            Image(systemName: "info.circle.fill")
                .foregroundColor(.blue)
            Text("About the App")
                .font(.title)
        }
        List{
            HStack{
                Text("App Version:")
                Text(getVersion())
            }
            HStack{
                Text("Code Source:")
                Link(destination: URL(string: "https://github.com/Isaaker/Ghost_Simulator_iOS-iPadOS")!){
                    Text("GitHub")
                }
            }
            HStack{
                Image(systemName: "hammer.fill")
                    .foregroundColor(.blue)
                Text("Developed by:")
                Link("Isaaker",destination: URL(string: "https://github.com/Isaaker")!)
            }
            HStack{
                Image(systemName: "swift")
                    .foregroundColor(.red)
                Text("Works with:")
                Link("Swift",destination: URL(string: "https://www.swift.org")!)

            }
            HStack{
                Image(systemName: "scribble.variable")
                    .foregroundColor(.pink)
                Text("Drawed by:")
                Link("Erica Hernán",destination: URL(string: "https://www.instagram.com/eri.hernan_art/")!)
            }
            HStack{
                Image(systemName: "person.3.fill")
                    .foregroundColor(.yellow)
                Text("Special Thanks:")
                Link("Antonio Hernán",destination: URL(string: "https://github.com/antoniohernan")!)

            }
        }
    }
}

struct user_info: View {
    @AppStorage("user_name") var user_name: String = ""
    //Discipline
    enum disciplines: String, CaseIterable, Identifiable {
        case compound, olympic, long_bow, traditional_recurve, bare_bow, none
        var id: Self { self }
    }
    @AppStorage("user_discipline") var user_discipline: disciplines = .none
    //Season
    enum seasons: String, CaseIterable, Identifiable {
        case indoor, outdoor, none
        var id: Self { self }
    }
    @AppStorage("user_season") var user_season: seasons = .none
    @AppStorage("user_notes") var user_notes: String = "Here you can take your notes, point your scopes and more..."
    @State var notes_hidden: Bool = true
    var body: some View {
        HStack{
            Image(systemName: "person.crop.circle")
                .foregroundColor(.orange)
            Text("User Info")
                .font(.title)
        }
        Divider()
        List{
            TextField("User Name", text: $user_name)
            Picker(selection: $user_discipline, label: Text("Discipline")) {
                Text("None").tag(disciplines.none)
                Text("Compound").tag(disciplines.compound)
                Text("Olympic").tag(disciplines.olympic)
                Text("Long Bow").tag(disciplines.long_bow)
                Text("Traditional Recurve").tag(disciplines.traditional_recurve)
                Text("Bare-Bow").tag(disciplines.bare_bow)
            }
            Picker(selection: $user_season, label: Text("Season")) {
                Text("None").tag(seasons.none)
                Text("Indoor").tag(seasons.indoor)
                Text("Outdoor").tag(seasons.outdoor)
            }
        }
        Spacer()
        if notes_hidden == true{
            Button(action:{
                notes_hidden = false
            }, label:{
                HStack{
                    Image(systemName: "note.text")
                    Text("Notes")
                }
            })
        }
        if notes_hidden == false{
            Button(action:{
                notes_hidden = true
            }, label:{
                HStack{
                    Image(systemName: "note.text")
                    Text("Notes")
                }
            })
            TextEditor(text: $user_notes)
        }
        Spacer()
    }
}

struct appstorage: View {
    @State var isPresented: Bool = false
    @State var variable_name: String = ""
    @AppStorage ("Navigation_hidden") var Navigation_hidden: Bool = true
    @AppStorage ("appstorage_developer") var appstorage_developer: Bool = false
    var body: some View {
        HStack{
            Image(systemName: "archivebox.circle.fill")
                .foregroundColor(.yellow)
            Text("App Storage")
                .font(.title)
        }
        Divider()
        Spacer()
        HStack{
            Image(systemName: "trash.circle.fill")
                .foregroundColor(.red)
            Text("Remove App Storage Memory")
        }
        Button("Remove", role: .destructive){
            isPresented = true
        }
        .alert(isPresented: $isPresented, content: {
            Alert(title: Text("App Storage"),
                  message: Text("If you delete the App Storage Info, the Simulation History also was deleted"),
                  primaryButton: Alert.Button.default(Text("Cancel"), action: {
                isPresented = false
            }), secondaryButton:
                    Alert.Button.destructive(Text("Continue"), action: {if let bundleID = Bundle.main.bundleIdentifier {
                        UserDefaults.standard.removePersistentDomain(forName: bundleID)
                        Navigation_hidden=true
                    }
              })
        )})
        Spacer()
        GroupBox{
            HStack{
                Image("hammer.circle.fill")
                    .foregroundColor(.blue)
                Text("Developer Options (Advanced)")
                Toggle(" ",
                                   isOn: $appstorage_developer)
            }
            if appstorage_developer == true{
                VStack{
                    Image(systemName: "externaldrive")
                        .foregroundColor(.brown)
                    TextField("Enter name of variable to remove", text: $variable_name)
                    Button(action: {
                        @AppStorage ("appstorage_developer") var appstorage_developer: Bool = false
                        variable_name = ""
                    }, label: {
                        HStack{
                            Image(systemName: "doc.badge.gearshape.fill")
                                .foregroundColor(.red)
                            Text("Remove")
                        }
                    })
                    .buttonStyle(.borderedProminent)
                    
                }
            }
        }
        Spacer()
    }
}


//Previews
struct Navigation_Previews: PreviewProvider {
    static var previews: some View {
        Navigation()
    }
}

